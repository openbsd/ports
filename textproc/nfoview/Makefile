# $OpenBSD: Makefile,v 1.30 2020/05/22 22:02:39 bcallah Exp $

COMMENT =	simple viewer for NFO files
MODPY_EGG_VERSION =	1.28
DISTNAME =	nfoview-${MODPY_EGG_VERSION}
CATEGORIES =	textproc x11

GH_ACCOUNT =	otsaloma
GH_PROJECT =	nfoview
GH_TAGNAME =	${MODPY_EGG_VERSION}

HOMEPAGE =	https://otsaloma.io/nfoview/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	devel/gettext,-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		fonts/cascadia-code \
		x11/gtk+3,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR}

post-patch:
	sed -i "s,share/man,man,g" ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC}/nfoview && ${LOCALBASE}/bin/py.test-3 unittest.py
	cd ${WRKSRC}/nfoview/test && ${LOCALBASE}/bin/py.test-3 test_*

.include <bsd.port.mk>
