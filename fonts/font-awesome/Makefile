COMMENT=	full suite pictographic icons

V =		6.5.2
PKGNAME =	font-awesome-${V}
DISTNAME =	fontawesome-free-${V}-desktop

CATEGORIES=	fonts

HOMEPAGE =	https://fontawesome.com

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

SITES =	https://github.com/FortAwesome/Font-Awesome/releases/download/${V}/
EXTRACT_SUFX =	.zip

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES =	font
MODFONT_TYPES =	otf

NO_BUILD =	Yes
NO_TEST =	Yes

FONTS_DIR=	${PREFIX}/share/fonts/font-awesome
DOCDIR =	${PREFIX}/share/doc/font-awesome

do-install:
	${INSTALL_DATA_DIR} ${FONTS_DIR}
	${INSTALL_DATA} ${WRKSRC}/otfs/*.otf ${FONTS_DIR}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
