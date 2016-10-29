# $OpenBSD: Makefile,v 1.85 2016/10/29 08:47:42 jasper Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		1.50.0
GNOME_PROJECT=		gobject-introspection

CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     3.0      # 1.1

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl m pcre pthread z

LIB_DEPENDS=		devel/glib2

BUILD_DEPENDS=		devel/bison \
			graphics/cairo \
			www/py-mako

RUN_DEPENDS=		graphics/cairo \
			www/py-mako

# XXX: tests/scanner/test_transformer.py fails otherwise
TEST_DEPENDS+=		textproc/gsed

YACC=			bison

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gobject-introspection/giscanner/*.{a,la}

# XXX: tidy-up some GNU-isms; see above.
pre-test:
	sed -i 's,\"sed ,\"gsed ,g' ${WRKSRC}/tests/scanner/test_transformer.py

.include <bsd.port.mk>
