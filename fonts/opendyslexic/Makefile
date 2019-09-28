# $OpenBSD: Makefile,v 1.1.1.1 2019/09/28 23:01:59 pamela Exp $

COMMENT =	font to increase readability for readers with dyslexia

GH_ACCOUNT =	antijingoist
GH_PROJECT =	opendyslexic
GH_TAGNAME =	v0.9.10

CATEGORIES =	fonts

HOMEPAGE =	https://opendyslexic.org

MAINTAINER =	Pamela Mosiejczuk <pamela@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/opendyslexic
DOCDIR =		${PREFIX}/share/doc/opendyslexic

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/compiled/{*.otf,*.woff} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{OFL.txt,OFL-FAQ.txt,README.md} ${DOCDIR}

.include <bsd.port.mk>
