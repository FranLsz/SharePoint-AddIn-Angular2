<%-- Las 4 líneas siguientes son directivas ASP.NET necesarias cuando se usan componentes de SharePoint. --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- El marcado y el script del elemento Content siguiente se pondrá en el <head> de la página. --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink Name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Agregue sus estilos CSS al siguiente archivo -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Agregue el código JavaScript al siguiente archivo -->
    <script type="text/javascript" src="../Scripts/App.js"></script>

    <!----------------- ANGULAR2 -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/es6-shim/0.33.3/es6-shim.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/systemjs/0.19.16/system-polyfills.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.0/angular2-polyfills.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/tools/system.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.0/Rx.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/2.0.0-beta.0/angular2.dev.js"></script>

    <!-- 2. Configure SystemJS -->
    <script type="text/javascript">
        System.config({
            packages: {
                '../Scripts/angular2/app': {
                    format: 'register',
                    defaultExtension: 'js'
                }
            }
        });
        System.import('../Scripts/angular2/app/boot.js');
    </script>
    <!---------------- END ANGULAR2 -->

</asp:Content>

<%-- El marcado del elemento Content siguiente se pondrá en el elemento TitleArea de la página. --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Angular 2 app
</asp:Content>

<%-- El marcado y el script del elemento Content siguiente se pondrá en el <body> de la página. --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div>
        <p id="message">
            <!-- El contenido siguiente se reemplazará por el nombre de usuario cuando ejecute la aplicación; vea App.js -->
            Cargando...
        </p>
        <app-main></app-main>
    </div>

</asp:Content>
