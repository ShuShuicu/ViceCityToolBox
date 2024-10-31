-------------------------------------------------------------------------------------------
--  GTA III Collision Script Exporter
--	Version 1.0
--	05., 12. October 2002
--
--	© 2002 by Steve M.
--	E-Mail: st.mu@web.de
--	Web: http://people.freenet.de/steve-m/
-------------------------------------------------------------------------------------------
utility COLL "GTA 3 CollScript Exporter"
(
			
	group " Export Collision Script "
	(
		button prepare "Prepare" toolTip:"Set rotation of gizmos to 0" offset:[-35,0]
		button make_file "Export" toolTip:"Export object data as text file" offset:[35,-26]
		button hints "Read first!!!"
		dropdownlist defsur "Default Surface Value:" items:#("[00] Standard", "[01] Street", "[02] Grass", "[03] Soil", "[04] Dirt", "[05] Beton", "[06] Aluminum", "[07] Glas", "[08] Metal Pole", "[09] Door", "[10] Metal Sheet", "[11] Metal", "[12] Small Metal Post", "[13] Large Metal Post", "[14] Medium Metal Post", "[15] Steel", "[16] Fence", "[17] ? X", "[18] Sand", "[19] Water", "[20] Wooden Box", "[21] Wooden Lathes", "[22] Wood", "[23] Metal Box", "[24] Metal Box", "[25] Hedge", "[26] Rock", "[27] Metal Container", "[28] Metal Barrel", "[29] ? X", "[30] Metal Card Box", "[31] ?", "[32] Gate/Bars")
	)
	
	group " About "
	(
		label LabelA "CollScript Exporter"
		label LabelB "Version 1.0"
		label LabelC "© 2002 by Steve M."
		label LabelD "people.freenet.de/steve-m/"
	)

	on hints pressed do
	(
		messagebox "Only select one editable mesh you want to export, spheres and boxes will be exported automatically! Press Prepare to set the rotation of sphere and box gizmos to 0, to see how they are exported."
	)
	
	on prepare pressed do
	(
		for obj in helpers do
			if (iskindof obj SphereGizmo) or (iskindof obj BoxGizmo) then
			(
				obj.rotation.x_rotation = 0
				obj.rotation.y_rotation = 0
				obj.rotation.z_rotation = 0
			)
	)		
	
	on make_file pressed do
	(
		COL = getSaveFileName types:"Collision Script(*.cst)|*.cst|All Files (*.*)|*.*|" 
		if COL != undefined then
		(		
			col = createFile (COL)
			format "# GTA3 Collision Script Exporter version 0.1 BETA by Steve M.\n# Web: http://people.freenet.de/steve-m/   E-Mail: st.mu@web.de\n# Exported on %\n\n" localtime to:col
			
			format "=> Spheres:\n" to:col
			n = 0
			for obj in helpers do
				if iskindof obj SphereGizmo then
				(
					format "S %: %  |  %; %; %  |  [%]\n" n obj.radius obj.pos.x obj.pos.y obj.pos.z ((defsur.selection - 1) as integer) to:col
					n+=1
				)
				
			format "\n=> Boxes:\n" to:col
			n = 0
			for obj in helpers do
				if iskindof obj BoxGizmo then
				(
					format "B %: %; %; %  |  %; %; %  |  [%]\n" n (obj.pos.x-obj.width/2) (obj.pos.y-obj.length/2) (obj.pos.z) (obj.pos.x+obj.width/2) (obj.pos.y+obj.length/2) (obj.pos.z+obj.height) ((defsur.selection - 1) as integer) to:col
					n+=1
				)
			
			obj = selection[1]
			if iskindof obj editable_mesh then
	     		(
				format "\n=> Vertex Count: %\n" obj.numverts to:col
			  	for i = 1 to obj.numverts do
			  	(
			    		-- format "V %: %; %; %\n" (i-1) (obj.verts[i].pos.x + obj.pos.x) (obj.verts[i].pos.y + obj.pos.y) (obj.verts[i].pos.z + obj.pos.z) to:col
						format "V %: %; %; %\n" (i-1) (obj.verts[i].pos.x) (obj.verts[i].pos.y) (obj.verts[i].pos.z) to:col

			  	)
			  	format "\n=> Face Count: %\n" obj.numfaces to:col
			  	for i = 1 to obj.numfaces do
			  	(
			    		fp3 = getface obj i
			    		format "F %: %; %; %  |  [%]\n" (i-1) ((fp3.x - 1) as integer) ((fp3.y - 1) as integer) ((fp3.z - 1) as integer) ((defsur.selection - 1) as integer) to:col
			  	)
			)
			else
			(
				messagebox "Object not selected or not an editable mesh!"
			)
			close col
		)
	)	
)