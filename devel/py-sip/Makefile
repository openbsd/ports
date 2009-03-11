# $OpenBSD: Makefile,v 1.5 2009/03/11 21:49:39 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	automatically generate Python bindings for C and C++ libs

DISTNAME=	sip-4.7.3
PKGNAME=	py-${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/sip/

MAINTAINER=	Lars Hansson <lars@unet.net.ph>

# SIP license (Python like)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m c stdc++

MASTER_SITES=	http://www.riverbankcomputing.com/Downloads/sip4/

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

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-sip
	${INSTALL_DATA} ${WRKSRC}/doc/sipref.txt \
		${PREFIX}/share/doc/py-sip

.include <bsd.port.mk>
