# $OpenBSD: Makefile,v 1.2 2010/09/02 08:22:24 jasper Exp $

SHARED_ONLY =		Yes

COMMENT =		hide awfull SSL API in a sane interface
V =			0.8
DISTNAME =		assl-${V}
REVISION =		0

SHARED_LIBS =		assl ${V}

CATEGORIES =		security devel

HOMEPAGE =		http://opensource.conformal.com/wiki/Assl

MAINTAINER =		Laurent Fanis <laurent@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://opensource.conformal.com/snapshots/assl/
EXTRACT_SUFX =		.tgz

NO_REGRESS =		Yes
DOC_DIR =		${PREFIX}/share/doc/assl/
EG_DIR =		${PREFIX}/share/examples/assl

do-install:
	${INSTALL_DATA} ${WRKSRC}/libassl.so.${LIBassl_VERSION} ${PREFIX}/lib/
	${INSTALL_MAN} ${WRKSRC}/assl.3 ${PREFIX}/man/man3
	${INSTALL_DATA} ${WRKSRC}/assl.h ${PREFIX}/include/
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/html/{assl.html,license.html,man.html,no_openssl.jpg,openssl.html} ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EG_DIR}
	cd ${WRKSRC}/examples && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${EG_DIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${EG_DIR}/{} \;

.include <bsd.port.mk>
