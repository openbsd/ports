# $OpenBSD: Makefile,v 1.3 2010/09/28 21:14:56 ckuethe Exp $

COMMENT =		hide awful SSL API in a sane interface
V =			0.9
DISTNAME =		assl-${V}

SHARED_LIBS =		assl ${V}

CATEGORIES =		security devel

HOMEPAGE =		http://opensource.conformal.com/wiki/Assl

MAINTAINER =		Chris Kuethe <ckuethe@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://opensource.conformal.com/snapshots/assl/
EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes
EG_DIR =		${PREFIX}/share/examples/assl
MAKE_FLAGS=		PREFIX=${LOCALBASE}

post-install:
	${INSTALL_DATA} ${WRKSRC}/assl.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${EG_DIR}
	cd ${WRKSRC}/examples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${EG_DIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${EG_DIR}/{} \;

.include <bsd.port.mk>
