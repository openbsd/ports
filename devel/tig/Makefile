# $OpenBSD: Makefile,v 1.20 2016/08/18 10:55:18 jca Exp $

COMMENT =	ncurses Git repository browser

DISTNAME =	tig-2.2

CATEGORIES =	devel

HOMEPAGE =	http://jonas.nitro.dk/tig/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c iconv ncursesw

MASTER_SITES =	${HOMEPAGE}releases/

BUILD_DEPENDS =	textproc/asciidoc \
		textproc/xmlto

RUN_DEPENDS =	devel/git

LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
ALL_TARGET =	all doc-man doc-html

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-libiconv=${LOCALBASE} DOCBOOK2PDF=false

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/tig

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tig
	${INSTALL_DATA} ${WRKSRC}/doc/manual.html ${PREFIX}/share/doc/tig
	${INSTALL_MAN} ${WRKSRC}/doc/tig.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/tigrc.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/doc/tigmanual.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
