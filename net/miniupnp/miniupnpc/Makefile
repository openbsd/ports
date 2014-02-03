# $OpenBSD: Makefile,v 1.6 2014/02/03 13:30:52 dcoppa Exp $

COMMENT-main=	UPnP IGD client lightweight library
COMMENT-python=	python module for miniupnpc

MODPY_EGG_VERSION= 1.9

DISTNAME=	miniupnpc-${MODPY_EGG_VERSION}

PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-${DISTNAME}

SHARED_LIBS +=	miniupnpc 2.0

WANTLIB-main += c

LIB_DEPENDS-python=${MODPY_LIB_DEPENDS}
WANTLIB-python += ${MODPY_WANTLIB} pthread

MASTER_SITES=	${HOMEPAGE}files/

MULTI_PACKAGES=	-main -python

MODULES=	lang/python

USE_GMAKE=	Yes
MAKE_ENV=	APIVERSION=${LIBminiupnpc_VERSION} \
		INSTALLPREFIX=${DESTDIR}${PREFIX}

FAKE_FLAGS=	DESTDIR=

# Override variables from the python module.
CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= updateminiupnpcstrings.sh
CATEGORIES-main= net
RUN_DEPENDS-main=	# empty

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} pythonmodule

post-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} installpythonmodule

.include <bsd.port.mk>
