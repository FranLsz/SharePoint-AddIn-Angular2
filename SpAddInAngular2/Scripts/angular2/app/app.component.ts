import {Titulo} from './app.module'
import {Component} from 'angular2/core'

@Component({
    selector: 'app-main',
    templateUrl: '../Scripts/angular2/app/templates/app.template.html', 
})

export class AppComponent {
    public title = Titulo.getTitulo();
    public nombre = 'Fran';
}
