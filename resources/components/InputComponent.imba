import type { View } from '@formidablejs/framework'

export tag InputComponent
	prop name\String
	prop value\String
	prop component\View

	<self>
		<input[fs:5 c: gray7 px:2 rd:2 bc:gray4 bs:solid bw:thin bc@active:gray6 outline:gray6] type="text" value="{ value ? value : component.old(name) }" name=name>
