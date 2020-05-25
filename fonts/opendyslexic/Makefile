# $OpenBSD: Makefile,v 1.3 2020/05/25 04:30:12 bentley Exp $

COMMENT =	font to increase readability for readers with dyslexia

GH_ACCOUNT =	antijingoist
GH_PROJECT =	opendyslexic
GH_TAGNAME =	v0.9.10
REVISION =	1

CATEGORIES =	fonts

HOMEPAGE =	https://opendyslexic.org

MAINTAINER =	Pamela Mosiejczuk <pamela@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =	*

FONTDIR =		${PREFIX}/share/fonts/opendyslexic
DOCDIR =		${PREFIX}/share/doc/opendyslexic

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/compiled/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{OFL.txt,OFL-FAQ.txt,README.md} ${DOCDIR}

.include <bsd.port.mk>
