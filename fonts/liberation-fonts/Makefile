# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:12 sthen Exp $

PKG_ARCH =	*

COMMENT =	substitute for MS TTF core fonts

DISTNAME =	liberation-fonts-ttf-2.00.1
PKGNAME =	${DISTNAME:S/-ttf//}
CATEGORIES =	fonts x11
REVISION =	1

HOMEPAGE =	https://pagure.io/liberation-fonts

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://releases.pagure.org/liberation-fonts/

NO_BUILD =	Yes
NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/fonts/Liberation
DOCDIR =	${PREFIX}/share/doc/liberation-fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/[A-Z][!i]* ${DOCDIR}

.include <bsd.port.mk>
