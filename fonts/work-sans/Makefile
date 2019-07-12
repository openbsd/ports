# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:13 sthen Exp $

COMMENT =	typeface based loosely on early Grotesques
PKGNAME =	${DISTNAME:L}
CATEGORIES =	fonts

GH_ACCOUNT =	weiweihuanghuang
GH_PROJECT =	Work-Sans
GH_TAGNAME =	v1.6

HOMEPAGE =	https://weiweihuanghuang.github.io/Work-Sans/
MAINTAINER =	George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

PKG_ARCH =	*

NO_BUILD =	Yes

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME:S/^v//}

FONTDIR =	${PREFIX}/share/fonts/work-sans
DOCDIR =	${PREFIX}/share/doc/work-sans

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/desktop/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/webfonts/*/* ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{README.md,LICENSE.txt} ${DOCDIR}

.include <bsd.port.mk>
