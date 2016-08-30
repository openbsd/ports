# $OpenBSD: Makefile,v 1.32 2016/08/30 15:59:24 landry Exp $

COMMENT=	automatically generate Python bindings for C and C++ libs

# XXX Be particularly careful when testing updates.
#     API breaks often.

DISTNAME=	sip-4.18.1
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.riverbankcomputing.co.uk/software/sip/intro

# SIP license (Python like)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m c stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyqt/}

MODULES=	lang/python

FLAVORS =	python3
FLAVOR ?=

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

SUBST_VARS +=	MODPY_LIB_SUFFIX

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${WRKINST}${MODPY_SITEPKG}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}sip
	${INSTALL_DATA} ${WRKSRC}/doc/html/_sources/* ${PREFIX}/share/doc/${MODPY_PY_PREFIX}sip
	mv -f ${PREFIX}/bin/sip ${PREFIX}/bin/sip${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
