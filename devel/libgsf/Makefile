# $OpenBSD: Makefile,v 1.57 2011/03/25 06:44:01 ajacoutot Exp $

COMMENT-main=		GNOME Structured File library
COMMENT-gnome=		GNOME specific extensions to libgsf

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.20

PKGNAME-main=		${DISTNAME}
PKGNAME-gnome=		libgsf-gnome-${VERSION}

CATEGORIES=		devel

SHARED_LIBS+=		gsf-1		114.12
SHARED_LIBS+=		gsf-gnome-1	114.11

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -gnome

WANTLIB += c m z pcre pthread bz2>=10.2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 xml2>=8.4

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=  	x11/py-gtk2>=2.10 \
			devel/popt
LIB_DEPENDS=		archivers/bzip2 \
			devel/glib2 \
			textproc/libxml

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			${MODGETTEXT_RUN_DEPENDS}

MODGCONF2_LIBDEP=	No
MODGCONF2_SCHEMAS_DIR=	libgsf

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-bz2 \
			--with-gio \
			--with-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV+=		GCONF2_SCHEMAS_DIR="${LOCALBASE}/${SCHEMAS_INSTDIR}"

USE_GROFF =		Yes

RUN_DEPENDS-gnome=	${RUN_DEPENDS} \
			${MODGCONF2_RUN_DEPENDS}
LIB_DEPENDS-gnome=	${LIB_DEPENDS} \
			${BUILD_PKGPATH} \
			x11/gnome/libbonobo
WANTLIB-gnome += ${WANTLIB} gsf-1 bonobo-2 bonobo-activation png
WANTLIB-gnome += ORBit-2 ORBitCosNaming-2 gdk_pixbuf-2.0 gthread-2.0

.include <bsd.port.mk>
