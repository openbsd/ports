# $OpenBSD: Makefile,v 1.57 2012/03/29 07:46:17 ajacoutot Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		1.32.0
GNOME_PROJECT=		gobject-introspection
CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     3.0      # 1.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		http://live.gnome.org/GObjectIntrospection

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread z

LIB_DEPENDS=		devel/glib2>=2.32.0
BUILD_DEPENDS=		devel/bison \
			graphics/cairo
RUN_DEPENDS=		graphics/cairo

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

YACC=			bison

CONFIGURE_STYLE=	gnu

CFLAGS+=		-pthread

SUBST_VARS+=		MODPY_SITEPKG CC

MODPY_ADJ_FILES=	giscanner/scannermain.py \
			giscanner/shlibs.py \
			giscanner/message.py \
			tests/offsets/gen-gitestoffsets

pre-configure:
	${SUBST_CMD} ${WRKSRC}/giscanner/{dumper,scannermain,sourcescanner}.py

.include <bsd.port.mk>
