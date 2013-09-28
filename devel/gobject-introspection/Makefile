# $OpenBSD: Makefile,v 1.73 2013/09/28 08:50:44 ajacoutot Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		1.38.0
GNOME_PROJECT=		gobject-introspection
REVISION=		0

CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     3.0      # 1.0

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre pthread z

LIB_DEPENDS=		devel/glib2>=2.34.1
BUILD_DEPENDS=		devel/bison \
			graphics/cairo
RUN_DEPENDS=		graphics/cairo

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

post-install:
	rm ${PREFIX}/lib/gobject-introspection/giscanner/*.{a,la}

.include <bsd.port.mk>
