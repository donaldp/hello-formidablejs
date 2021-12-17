import { DeleteComponent } from './DeleteComponent'
import { isEmpty } from '@formidablejs/framework/lib/Support/Helpers'
import { URL } from '@formidablejs/framework'

export tag PostComponent
	prop csrf_token\String
	prop id\Number
	prop edit\Boolean = false
	prop show\Boolean = false
	prop title\String
	prop content\String

	<self>
		<div[mb:4]>
			<div>
				<span>
					<strong> "Title: "
				<span> title

			<div>
				<span>
					<strong> "Content: "
				<span> content

			if show
				<a href=URL.route('posts.show', { id })> "Show post"

			if edit
				<div[d:inline-flex]>
					<DeleteComponent token=csrf_token action=URL.route('posts.delete') id=id> "Delete post"
					<span[px:2]> '|'
					<a href=URL.route('posts.edit', { id })> "Edit post"

				<div[my:4]>
					<a href=URL.route('posts.all')> "Back"

