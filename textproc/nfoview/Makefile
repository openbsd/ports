# $OpenBSD: Makefile,v 1.1.1.1 2013/12/01 23:16:42 bcallah Exp $

COMMENT =	simple viewer for NFO files
MODPY_EGG_VERSION =	1.13.1
DISTNAME =	nfoview-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	textproc x11

HOMEPAGE =	http://home.gna.org/nfoview/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.gna.org/nfoview/1.13/

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool
MODPY_VERSION =	3.3

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-gobject3,python3 \
		fonts/terminus-font \
		x11/gtk+2,-guic \
		x11/gtk+3

TEST_DEPENDS =	devel/py-test,python3 \
		devel/py-gobject3,python3

post-patch:
	perl -pi -e "s,share/man,man,g" ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC}/nfoview && ${LOCALBASE}/bin/py.test-3 unittest.py
	cd ${WRKSRC}/nfoview/test && ${LOCALBASE}/bin/py.test-3 test_*

.include <bsd.port.mk>
