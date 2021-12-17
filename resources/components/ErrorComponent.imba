import type { View } from '@formidablejs/framework'

export tag ErrorComponnet
	prop name\String
	prop component\View

	<self>
		if component.hasError(name)
			for error in component.error(name)
				<p[c:red6 fs:3 lh:0]> error
