COMMENT =	cyber swiss army knife

V =		11.4.0
HASH =		49d1a5634a67a3b806c6db0fdca7dcecb41a776c
DISTNAME =	CyberChef_${HASH}
PKGNAME =	cyberchef-$V

PREFIX =	${VARBASE}/www

CATEGORIES =	security www

HOMEPAGE =	https://gchq.github.io/CyberChef/

MAINTAINER =	Anthony J. Bentley <bentley@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/gchq/CyberChef/releases/download/v$V/

EXTRACT_SUFX =	.zip

NO_TEST =	Yes

PKG_ARCH =	*
WRKDIST =	${WRKDIR}

do-build:
	gunzip -k ${WRKSRC}/index.html.gz

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/cyberchef
	${INSTALL_DATA} \
		${WRKSRC}/*.txt ${WRKSRC}/*.html ${WRKSRC}/*.gz ${WRKSRC}/*.br \
		${PREFIX}/cyberchef
	cp -R ${WRKSRC}/assets ${WRKSRC}/images ${WRKSRC}/modules \
		${PREFIX}/cyberchef

.include <bsd.port.mk>
