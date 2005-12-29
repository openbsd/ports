# $OpenBSD: Makefile,v 1.19 2005/12/29 14:35:07 espie Exp $

COMMENT=	"designer for qt2"

VERSION=	3.2
DISTNAME=	qt-designer-2.${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11 devel
SHARED_LIBS=	qutil	1.0
SHARED_LIBS=	qutil	4.0

MASTER_SITES=	ftp://ftp.troll.no/qt/source/
DISTFILES=	qt-x11-2.${VERSION}.tar.gz
EXTRACT_ONLY=	

BUILD_DEPENDS=	::x11/qt2:configure
RUN_DEPENDS=	::x11/qt2,-html

HOMEPAGE=	http://www.trolltech.com/qt/

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++ z
EXTRACT_ONLY=
WRKDIST=	${WRKDIR}/qt2-tools

post-extract:
	mkdir -p ${WRKDIST}/lib ${WRKDIST}/bin
	lndir ${WRKDIR}/x11/qt2/qt-*/tools ${WRKDIST}

USE_X11=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	QTDIR="${WRKDIST}" EXTRA_SAMPLES="${EXTRA_SAMPLES}" \
		SYS_CXX="${CXX}" SYS_CXXFLAGS="${CXXFLAGS}" \
		LD_LIBRARY_PATH="${WRKDIST}/lib" KDEDIR=${LOCALBASE}

MAKE_FLAGS= 	SYSCONF_CXXFLAGS_QT=-I${LOCALBASE}/include/X11/qt2 \
		SYSCONF_LFLAGS_QT=-L${LOCALBASE}/lib/qt2 \
		SYSCONF_MOC=${LOCALBASE}/bin/moc2 \
		LIBqutil_VERSION=$(LIBqutil_VERSION)



LIB_DEPENDS=	jpeg.62.::graphics/jpeg \
		png.2.::graphics/png \
		mng.1.::graphics/libmng \
		lib/qt2/qt.2::x11/qt2

TRUEDIR=	${TRUEPREFIX}/lib/qt2
QT_LIBDIR=	${PREFIX}/lib/qt2
QT_MANDIR=	${QT_LIBDIR}/man
QT_EXAMPLES=	${QT_LIBDIR}/examples
QT_TUTORIAL=	${QT_LIBDIR}/tutorial
QT_DOC=		${PREFIX}/share/doc/qt2

NO_REGRESS=	Yes


do-install:
	${INSTALL_MAN_DIR} ${QT_MANDIR}/man1
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/bin
	${INSTALL_DATA_DIR} ${QT_LIBDIR}/tools/designer/templates
	@if [ -f ${WRKBUILD}/lib/libqutil.a ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqutil.a ${QT_LIBDIR}; \
	fi
	@if [ -f ${WRKBUILD}/lib/libqutil.so.$(LIBqutil_VERSION) ]; then \
	 ${INSTALL_DATA} ${WRKBUILD}/lib/libqutil.so.$(LIBqutil_VERSION) ${QT_LIBDIR}; \
	 ln -sf qt2/libqutil.so.$(LIBqutil_VERSION) ${PREFIX}/lib; \
	fi
	echo "#! /bin/sh" >${WRKDIR}/designer
	echo "QTDIR=${TRUEDIR} exec ${TRUEDIR}/bin/designer" \
	    >>${WRKDIR}/designer
	${INSTALL_DATA} ${WRKBUILD}/designer/templates/* \
		${QT_LIBDIR}/tools/designer/templates
	${INSTALL_SCRIPT} ${WRKDIR}/designer ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/designer ${QT_LIBDIR}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/uic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/designer/uic/uic.1 ${QT_MANDIR}/man1

.include <bsd.port.mk>
