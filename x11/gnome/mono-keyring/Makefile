# $OpenBSD: Makefile,v 1.5 2011/11/03 10:40:09 ajacoutot Exp $

# libgnome-keyring-sharp-glue.so is a dlopen() module
SHARED_ONLY=	Yes

COMMENT=	.NET language bindings for GNOME keyring

GNOME_PROJECT=	gnome-keyring-sharp
GNOME_VERSION=	1.0.2
PKGNAME=	mono-gnome-keyring-${VERSION}

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += dbus-1 gcrypt glib-2.0 gnome-keyring gpg-error pcre

MASTER_SITES=	http://www.go-mono.com/archive/gnome-keyring-sharp/
EXTRACT_SUFX=	.tar.gz

MODULES=	lang/mono \
		x11/gnome \
		devel/gettext

LIB_DEPENDS=	x11/gnome/libgnome-keyring

RUN_DEPENDS=	sysutils/ndesk-dbus \
		x11/mono-gtk2
BUILD_DEPENDS=	${RUN_DEPENDS}

DLLMAP_FILES=	src/Gnome.Keyring.dll.config

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static

.include <bsd.port.mk>
