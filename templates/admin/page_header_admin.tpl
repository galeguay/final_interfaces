<!DOCTYPE html>
<html lang="es">
<head>
    <base href="{BASE_URL}" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="/libs/bootstrap5.2.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="/css/style_admin.css">
    <link rel="stylesheet" href="/css/home.css">
    <link rel="stylesheet" href="/css/nav.css">
    <link rel="stylesheet" href="/css/story.css">
    <link rel="stylesheet" href="/css/storycard.css">
    <link rel="stylesheet" href="/css/accordion.css">
    <link rel="stylesheet" href="/css/forms.css">
    <link rel="stylesheet" href="/css/rating.css">
    <link rel="stylesheet" href="/css/nav_admin.css">

    <link rel="shortcut icon" href="/images/icon/favicon.ico" type="images/x-icon">

    <link rel="apple-touch-icon" sizes="57x57" href="/images/icon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/images/icon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/images/icon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/images/icon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/images/icon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/images/icon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/images/icon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/images/icon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/images/icon/apple-icon-180x180.png">
    <link rel="icon" type="images/png" sizes="192x192"  href="/images/icon/android-icon-192x192.png">
    <link rel="icon" type="images/png" sizes="32x32" href="/images/icon/favicon-32x32.png">
    <link rel="icon" type="images/png" sizes="96x96" href="/images/icon/favicon-96x96.png">
    <link rel="icon" type="images/png" sizes="16x16" href="/images/icon/favicon-16x16.png">

    <title>
    {$title}
    {if $user['rol'] > 1}
        - Admin Urban Mysteries
    {else}
        - Urban Mysteries
    {/if}
    </title>

</head>
<body>
    {if $user['rol'] > 1}
        {include file="admin/page_nav_admin.tpl"}
    {/if}