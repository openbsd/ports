# $OpenBSD: Makefile,v 1.1.1.1 2019/09/19 13:59:22 bcallah Exp $

COMMENT =	iconic bitmap font based on Stlarch with additional glyphs
DISTNAME =	${GH_PROJECT}-0.0.0.20190218
CATEGORIES =	fonts

# No releases... use GH_COMMIT
GH_ACCOUNT =	stark
GH_PROJECT =	siji
GH_COMMIT =	c691f200c1c66e76daa2afc9cbbd1aa39045c906

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/siji

do-build:
	${GZIP_CMD} ${WRKSRC}/pcf/siji.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/pcf/siji.pcf.gz ${FONTDIR}

.include <bsd.port.mk>
