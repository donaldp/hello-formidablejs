export tag DeleteComponent
	prop action\String
	prop token\String
	prop id\Number

	<self>
		<form id="delete" action=action method="POST">
			<input type="hidden" name="_token" value=token>
			<input type="hidden" name="id" value=id>

			<button[bd:0 outline:none bg:none cursor:pointer c:#0000EE p:0 td:underline ff:inherit fs:inherit] type="submit">
				<slot>
