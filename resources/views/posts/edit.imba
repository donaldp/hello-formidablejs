import { CsrfComponent } from '../../components/CsrfComponent'
import { ErrorComponnet } from '../../components/ErrorComponent'
import { InputComponent } from '../../components/InputComponent'
import { InputGroupComponent } from '../../components/InputGroupComponent'
import { LabelComponent } from '../../components/LabelComponent'
import { SubmitComponent } from '../../components/SubmitComponent'
import { TextAreaComponent } from '../../components/TextAreaComponent'
import { URL } from '@formidablejs/framework'
import { View } from '@formidablejs/framework'

export class EditPost < View

	def render
		<html lang="{ get('locale') }">
			<head>
				<meta charset='utf-8'>
				<meta name='viewport' content='width=device-width,initial-scale=1'>
				<title> "New Post"

				<link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap'>
				<style src="./edit">

			<body[m:4 ff:Nunito]>
				<h1> "Update Post"

				if hasSession('success')
					<p[c:green6]> session('success')

				<form action=URL.route('posts.update', { id: get('post').id }) method="POST">
					<CsrfComponent component=self>

					<InputGroupComponent>
						<LabelComponent> "Title"
						<InputComponent component=self name="title" value=get('post').title>
						<ErrorComponnet component=self name="title">

					<InputGroupComponent>
						<LabelComponent> "Content"
						<TextAreaComponent component=self name="content" value=get('post').content>
						<ErrorComponnet component=self name="content">

					<InputGroupComponent>
						<SubmitComponent> "Update Post"

				<a href=URL.route('posts.show', { id: get('post').id })> "Cancel edit"
