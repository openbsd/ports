# $OpenBSD: Makefile,v 1.28 2018/04/22 07:16:31 ajacoutot Exp $

COMMENT=		diary and journal application

MODPY_EGG_VERSION=	2.4
GH_TAGNAME=		v${MODPY_EGG_VERSION}
GH_ACCOUNT=		jendrikseipp
GH_PROJECT=		rednotebook

CATEGORIES=		productivity

# GPLv2+ - GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

# msgfmt(1)
BUILD_DEPENDS=		devel/gettext-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/xdg-utils \
			textproc/py-enchant${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/webkitgtk4 \
			x11/gtk+3,-guic

NO_TEST=		Yes

.include <bsd.port.mk>
