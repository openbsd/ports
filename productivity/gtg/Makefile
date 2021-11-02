# $OpenBSD: Makefile,v 1.39 2021/11/02 00:01:54 sthen Exp $

COMMENT=		GTD organizer for GNOME

GH_PROJECT =		gtg
GH_ACCOUNT =		getting-things-gnome
GH_COMMIT =		54b2793be236da41549360c5aeb0da5e33a7ff60
MODPY_EGG_VERSION =	0.4.0
DISTNAME =		gtg-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES=		productivity

HOMEPAGE=		https://wiki.gnome.org/Apps/GTG

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

BUILD_DEPENDS=		devel/gettext,-tools \
			textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-liblarch \
			devel/py-xdg${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR} \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gtk+3,-guic

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}
TEST_TARGET =		tests

pre-configure:
	${SUBST_CMD} ${WRKSRC}/docs/Makefile ${WRKSRC}/setup.py

.include <bsd.port.mk>
