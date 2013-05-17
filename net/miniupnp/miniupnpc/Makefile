# $OpenBSD: Makefile,v 1.5 2013/05/17 10:59:31 dcoppa Exp $

COMMENT-main=	UPnP IGD client lightweight library
COMMENT-python=	python module for miniupnpc

MODPY_EGG_VERSION= 1.8

DISTNAME=	miniupnpc-${MODPY_EGG_VERSION}

PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-${DISTNAME}

SHARED_LIBS +=	miniupnpc 1.0

WANTLIB-main += c

LIB_DEPENDS-python=${MODPY_LIB_DEPENDS}
WANTLIB-python += ${MODPY_WANTLIB} pthread

MASTER_SITES=	${HOMEPAGE}files/

MULTI_PACKAGES=	-main -python

MODULES=	lang/python

USE_GMAKE=	Yes
MAKE_ENV=	APIVERSION=${LIBminiupnpc_VERSION} \
		INSTALLPREFIX=${DESTDIR}${PREFIX}

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
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3
	${INSTALL_MAN} ${WRKSRC}/man3/miniupnpc.3 \
		${PREFIX}/man/man3/miniupnpc.3

.include <bsd.port.mk>
