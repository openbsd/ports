# $OpenBSD: Makefile,v 1.5 2014/06/03 11:35:30 rpointel Exp $

COMMENT =	simple viewer for NFO files
MODPY_EGG_VERSION =	1.13.1
DISTNAME =	nfoview-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	textproc x11

REVISION = 0

HOMEPAGE =	http://home.gna.org/nfoview/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.gna.org/nfoview/1.13/

MODULES =	devel/gettext \
		lang/python \
		textproc/intltool
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/py-gobject3${MODPY_FLAVOR} \
		fonts/terminus-font \
		x11/gtk+2,-guic

# pygobject GTK3 introspection (not provided by indirect dependencies)
RUN_DEPENDS +=	x11/gtk+3

TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		devel/py-gobject3${MODPY_FLAVOR}

post-patch:
	perl -pi -e "s,share/man,man,g" ${WRKSRC}/setup.py

do-test:
	cd ${WRKSRC}/nfoview && ${LOCALBASE}/bin/py.test-3 unittest.py
	cd ${WRKSRC}/nfoview/test && ${LOCALBASE}/bin/py.test-3 test_*

.include <bsd.port.mk>
