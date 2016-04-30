# $OpenBSD: Makefile,v 1.7 2016/04/30 16:37:55 zhuk Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.7.2
CATEGORIES =	archivers

SHARED_LIBS =	quazip 2.0		# 1.0

HOMEPAGE =	http://quazip.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += m stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=quazip/}

MODULES =	devel/cmake \
		x11/qt4

CONFIGURE_ARGS =	-DBUILD_WITH_QT4=Yes

# picks up stuff from installed system first, thanks to qmake4
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
do-test:
	mkdir -p ${WRKBUILD}/qztest; \
	cd ${WRKBUILD}/qztest; \
	${MODQT_QMAKE} ${WRKSRC}/qztest/qztest.pro; \
	${MAKE_PROGRAM} && ./qztest

.include <bsd.port.mk>
