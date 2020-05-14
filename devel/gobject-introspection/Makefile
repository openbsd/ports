# $OpenBSD: Makefile,v 1.99 2020/05/14 14:56:40 jasper Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		1.64.1
GNOME_PROJECT=		gobject-introspection

CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     3.0      # 1.1

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			lang/python \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl m pthread

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=		devel/glib2

BUILD_DEPENDS=		devel/bison \
			graphics/cairo \
			textproc/py-markdown${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR}

RUN_DEPENDS=		graphics/cairo \
			textproc/py-markdown${MODPY_FLAVOR} \
			www/py-mako${MODPY_FLAVOR}

# XXX: tests/scanner/test_transformer.py fails otherwise
TEST_DEPENDS+=		textproc/gsed

# XXX: tidy-up some GNU-isms; see above.
pre-test:
	sed -i 's,\"sed ,\"gsed ,g' ${WRKSRC}/tests/scanner/test_transformer.py

.include <bsd.port.mk>
