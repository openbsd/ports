# $OpenBSD: Makefile,v 1.37 2021/06/05 21:28:07 fcambus Exp $

COMMENT =	ncurses Git repository browser

V =		2.5.4
DISTNAME =	tig-$V

CATEGORIES =	devel

HOMEPAGE =	https://jonas.github.io/tig/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses iconv

MASTER_SITES =	https://github.com/jonas/tig/releases/download/tig-$V/

BUILD_DEPENDS =	textproc/xmlto

RUN_DEPENDS =	devel/git

LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS += --with-libiconv=${LOCALBASE} DOCBOOK2PDF=false

MAKE_FLAGS =	V=1

FAKE_FLAGS =	mandir=${PREFIX}/man \
		sysconfdir=${PREFIX}/share/examples/tig \

FAKE_TARGET =	install install-doc-man

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tig
	${INSTALL_DATA} ${WRKSRC}/doc/manual.html ${PREFIX}/share/doc/tig

.include <bsd.port.mk>
