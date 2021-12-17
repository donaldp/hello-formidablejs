import type { View } from '@formidablejs/framework'

export tag TextAreaComponent
	prop name\String
	prop value\String
	prop component\View

	<self>
		<textarea[fs:5 c: gray7 px:2 rd:2 bc:gray4 bs:solid bw:thin bc@active:gray6 outline:gray6] name=name> value ? value : component.old(name)
