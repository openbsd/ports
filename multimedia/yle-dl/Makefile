# $OpenBSD: Makefile,v 1.6 2014/05/20 14:37:02 sthen Exp $

V =			2.2.1
COMMENT =		download videos from YLE Areena
DISTNAME =		aajanki-yle-$V
PKGNAME =		yle-dl-$V
CATEGORIES =		multimedia

HOMEPAGE =		http://aajanki.github.io/yle-dl/

MAINTAINER =		Antti Harri <iku@openbsd.fi>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/aajanki/yle-dl/tarball/${V}/

MODULES =		lang/python
RUN_DEPENDS =		net/rtmpdump \
			security/py-crypto

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/aajanki-yle-dl-b2b1869

MODPY_ADJ_FILES =	yle-dl

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/yle-dl ${PREFIX}/bin/yle-dl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yle-dl
	${INSTALL_DATA} ${WRKSRC}/COPYING ${WRKSRC}/README.fi \
		${PREFIX}/share/doc/yle-dl

.include <bsd.port.mk>
