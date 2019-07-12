# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:01 sthen Exp $

COMMENT =	advanced lint: statically check C programs
DISTNAME =	splint-3.1.2
DISTFILES =	splint-3.1.2.src.tgz
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://www.splint.org/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes
WANTLIB =		c

MASTER_SITES =	${HOMEPAGE}downloads/

# Has to use bison because splint uses pure parsers
BUILD_DEPENDS =	devel/bison

USE_GMAKE =	Yes
CONFIGURE_STYLE = gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/config

pre-build:
	-rm ${WRKSRC}/src/{cgrammar,llgrammar,mtgrammar,signature}.c

DOCDIR=	${PREFIX}/share/doc/splint

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/manual.pdf ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/html/manual.htm ${DOCDIR}/manual.html

.include <bsd.port.mk>
