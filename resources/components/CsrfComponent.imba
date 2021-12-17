import type { View } from '@formidablejs/framework'

export tag CsrfComponent
	prop component\View

	<self>
		<input type="hidden" name="_token" value=component.get('csrf_token')>
