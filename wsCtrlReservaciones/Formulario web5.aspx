<%@ Page Title="Acerca de Nosotros"
Language="C#"
MasterPageFile="~/PaginaMaestra.Master"
AutoEventWireup="true"
CodeBehind="Formulario web5.aspx.cs"
Inherits="wsCtrlReservaciones.Formulario_web5" %>

<asp:Content ID="Content1"
ContentPlaceHolderID="head"
runat="server">

<link href="App_Themes/acerca.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2"
ContentPlaceHolderID="ContentPlaceHolder1"
runat="server">

<div class="about-container">

    <div class="about-card">

        <h1>Acerca de Nosotros</h1>

        <p class="subtitle">
            Equipo de desarrollo — Instituto Tecnológico de Pachuca
        </p>

        <div class="developer-grid">

            <!-- DESARROLLADOR 1 -->
            <div class="developer-card">

                <h3>Luis Fernando Tolentino Segovia</h3>

                <p><strong>Matrícula:</strong> 22200771</p>

                <p>
                    Estudiante de Ingeniería en Sistemas Computacionales
                    (8° semestre) del Instituto Tecnológico de Pachuca.
                </p>

                <p>
                    Experiencia en desarrollo web full-stack,
                    integración de sistemas distribuidos,
                    redes de cómputo, bases de datos relacionales
                    y NoSQL, modelado 3D, realidad virtual
                    y despliegue de aplicaciones productivas.
                </p>

                <p>
                    Certificado por Microsoft, Cisco,
                    Huawei, SCRUMstudy y Fundación Carlos Slim.
                </p>

                <p>
                    <strong>Correo:</strong><br />
                    l22200771@pachuca.tecnm.mx
                </p>

            </div>

            <!-- DESARROLLADOR 2 -->
            <div class="developer-card">

                <h3>Isaías Arrieta Prado</h3>

                <p><strong>Matrícula:</strong> 22200712</p>

                <p>
                    Desarrollador de software enfocado en
                    aplicaciones, videojuegos y sistemas full stack.
                </p>

                <p>
                    Experiencia con Unity, Java,
                    SpringBoot, MySQL y Python,
                    desarrollando proyectos con backend,
                    bases de datos y experiencias interactivas.
                </p>

                <p>
                    Interés en programación,
                    diseño de sistemas y desarrollo
                    de videojuegos orientado a rendimiento,
                    creatividad y resolución de problemas.
                </p>

                <p>
                    <strong>Correo:</strong><br />
                    l22200712@pachuca.tecnm.mx
                </p>

            </div>

            <!-- DESARROLLADOR 3 -->
            <div class="developer-card">

                <h3>Octavio Salas Nava</h3>

                <p><strong>Matrícula:</strong> 22200766</p>

                <p>
                    Estudiante del Instituto Tecnológico de Pachuca.
                </p>

                <p>
                    Participación durante medio año
                    en un equipo de desarrollo para
                    migración de una plataforma web institucional.
                </p>

                <p>
                    Autor del libro
                    <em>"El Retorno del Guardián:
                    Un Segundo Ataque"</em>,
                    actualmente sin registro de derechos de autor.
                </p>

                <p>
                    <strong>Correo:</strong><br />
                    l22200766@pachuca.tecnm.mx
                </p>

            </div>

        </div>

    </div>

</div>

</asp:Content>
