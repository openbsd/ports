# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:11 sthen Exp $

COMMENT =			programming font designed with functionality in mind

V =				1.7.2
DISTNAME =			fantasque-sans-$V
DISTFILES =			${DISTNAME}{FantasqueSansMono-Normal}.tar.gz

CATEGORIES =			fonts

MAINTAINER =			Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =			https://fontlibrary.org/en/font/fantasque-sans-mono

# SIL OFL 1.1
PERMIT_PACKAGE =		Yes

MASTER_SITES =			https://github.com/belluzj/fantasque-sans/releases/download/v$V/

NO_BUILD =			Yes
NO_TEST =			Yes

FONTDIR =			${PREFIX}/share/fonts/fantasque-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/OTF/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/TTF/*.ttf ${FONTDIR}

.include <bsd.port.mk>
