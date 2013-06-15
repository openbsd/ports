# $OpenBSD: Makefile,v 1.26 2013/06/15 19:57:18 espie Exp $

# XXX: Don't forget to update x11/py-qt4 when updating this port.

SHARED_ONLY=	Yes

COMMENT=	automatically generate Python bindings for C and C++ libs

DISTNAME=	sip-4.14.1
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/sip/intro

# SIP license (Python like)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m c stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES=	lang/python

CONFIGURE_STYLE=simple
CONFIGURE_SCRIPT=${MODPY_BIN} configure.py
CONFIGURE_ARGS=	-b ${PREFIX}/bin \
		-d ${MODPY_SITEPKG} \
		-e ${MODPY_INCDIR} \
		-v ${PREFIX}/share/sip \
		INCDIR=${LOCALBASE}/include \
		LIBDIR=${LOCALBASE}/lib \
		CC=${CC} CXX=${CXX} \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}"

NO_TEST=	Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sip
	${INSTALL_DATA} ${WRKSRC}/doc/html/_sources/* ${PREFIX}/share/doc/py-sip

.include <bsd.port.mk>
