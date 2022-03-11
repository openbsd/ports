COMMENT=		diary and journal application

MODPY_EGG_VERSION=	2.22
GH_TAGNAME=		v${MODPY_EGG_VERSION}
GH_ACCOUNT=		jendrikseipp
GH_PROJECT=		rednotebook
REVISION=		0

CATEGORIES=		productivity

# GPLv2+ - GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

# msgfmt(1)
BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/xdg-utils \
			textproc/py-enchant${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/webkitgtk4 \
			x11/gtk+3,-guic \
			x11/gtksourceview3

NO_TEST=		Yes

.include <bsd.port.mk>
