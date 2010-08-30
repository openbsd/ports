# $OpenBSD: Makefile,v 1.8 2010/08/30 21:47:46 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	python Qt3 bindings

# XXX: Upstream doesn't keep old files; if updating please mirror or ask sthen@
V=		3.18.1
DISTNAME=	PyQt-x11-gpl-${V}
PKGNAME=	py-qt3-${V}

REVISION=	1

CATEGORIES=	x11 devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/pyqt/intro

MAINTAINER=	Lars Hansson <lars@unet.net.ph>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	GL GLU X11 Xext Xmu c m pthread stdc++ qui

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-sip->=4.8.1:devel/py-sip
LIB_DEPENDS=	::x11/qt3

NO_REGRESS=	Yes

MASTER_SITES=	http://www.riverbankcomputing.co.uk/static/Downloads/PyQt3/ \
		http://spacehopper.org/mirrors/

MODULES=	x11/qt3 \
		lang/python

USE_X11=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=${MODPY_BIN} configure.py
CONFIGURE_ARGS=	-w \
		-b ${PREFIX}/bin \
		-d ${MODPY_SITEPKG} \
		-g ${MODQT_INCDIR} \
		-l ${MODPY_INCDIR} \
		-m ${MODQT_LIBDIR} \
		-q ${MODQT3_LIBDIR} \
		-v ${PREFIX}/share/sip \
		-y qt-mt \
		INCDIR_QT=${MODQT_INCDIR} \
		LIBDIR=${LOCALBASE}/lib \
		LIBDIR_QT=${MODQT_LIBDIR} \
		CC=${CC} \
		CXX=${CXX} \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-qt3
	cp -R ${WRKSRC}/doc/* ${PREFIX}/share/doc/py-qt3
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/py-qt3/*

.include <bsd.port.mk>
