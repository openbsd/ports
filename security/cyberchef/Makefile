COMMENT =	cyber swiss army knife

V =		11.5.0
HASH =		8cd426dd4f40f1423912d5fad91b578a86a65112
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
