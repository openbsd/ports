# $OpenBSD: Makefile,v 1.26 2017/09/15 13:44:23 ajacoutot Exp $

COMMENT=		diary and journal application

MODPY_EGG_VERSION=	2.2
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
			devel/xdg-utils \
			textproc/py-enchant${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/webkitgtk4 \
			x11/gtk+3,-guic

NO_TEST=		Yes

.include <bsd.port.mk>
