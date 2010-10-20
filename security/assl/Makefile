# $OpenBSD: Makefile,v 1.7 2010/10/20 15:23:04 naddy Exp $

COMMENT =		hide awful SSL API in a sane interface
V =			0.9.1
EPOCH=			0
DISTNAME =		assl-${V}

SHARED_LIBS =		assl 0.9

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

do-configure:
	printf "major=${LIBassl_VERSION:R}\nminor=${LIBassl_VERSION:E}\n" \
	    > ${WRKSRC}/shlib_version

post-install:
	${INSTALL_DATA} ${WRKSRC}/assl.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${EG_DIR}
	cd ${WRKSRC}/examples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${EG_DIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${EG_DIR}/{} \;

.include <bsd.port.mk>
