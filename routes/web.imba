import { PostController } from '../app/Http/Controllers/PostController'
import { Request } from '@formidablejs/framework'
import { Route } from '@formidablejs/framework'
import { Welcome } from '../resources/views/welcome'

# --------------------------------------------------------------------------
# Web Routes
# --------------------------------------------------------------------------
#
# Here is where you can register API routes for your application. These
# routes are loaded by the RouteServiceResolver within a group which
# is assigned the "session" middleware group.

Route.get '/', do(request\Request)
	view(Welcome, {
		formidableVersion: request.version
		nodeVersion: process.version
	})

Route.group { prefix: 'posts' }, do
	Route.get('/', [PostController, 'index']).name('posts.all')
	Route.get('/create', [PostController, 'create']).name('posts.create')
	Route.post('/store', [PostController, 'store']).name('posts.store')
	Route.get('/:id', [PostController, 'show']).name('posts.show')
	Route.get('/:id/edit', [PostController, 'edit']).name('posts.edit')
	Route.post('/:id/update', [PostController, 'update']).name('posts.update')
	Route.post('/delete', [PostController, 'remove']).name('posts.delete')
