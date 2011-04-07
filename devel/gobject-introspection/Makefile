# $OpenBSD: Makefile,v 1.31 2011/04/07 15:09:58 jasper Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		0.10.7
GNOME_PROJECT=		gobject-introspection
REVISION=		4
CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     1.0      # 1.0

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

LIB_DEPENDS=		devel/glib2 \
			devel/libffi
BUILD_DEPENDS=		devel/bison \
			graphics/cairo
RUN_DEPENDS=		graphics/cairo

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		-pthread

SUBST_VARS+=		MODPY_SITEPKG LIBTOOL CC

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in \
		${WRKSRC}/Makefile.introspection \
		${WRKSRC}/giscanner/dumper.py \
		${WRKSRC}/giscanner/scannermain.py \
		${WRKSRC}/tests/scanner/Makefile.in \
		${WRKSRC}/tests/offsets/Makefile.in \
		${WRKSRC}/tools/g-ir-scanner.in
	perl -pi -e "s,'cc','${CC}'," ${WRKSRC}/giscanner/sourcescanner.py

.include <bsd.port.mk>
