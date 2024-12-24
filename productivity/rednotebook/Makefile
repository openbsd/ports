COMMENT=		diary and journal application

MODPY_DISTV=		2.37
GH_TAGNAME=		v${MODPY_DISTV}
GH_ACCOUNT=		jendrikseipp
GH_PROJECT=		rednotebook

CATEGORIES=		productivity

# GPLv2+ - GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

# msgfmt(1)
BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			devel/xdg-utils \
			textproc/py-enchant \
			textproc/py-yaml \
			www/webkitgtk4,webkitgtk41 \
			x11/gtk+4,-guic \
			x11/gtksourceview4

NO_TEST=		Yes

.include <bsd.port.mk>
