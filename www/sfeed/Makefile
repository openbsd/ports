# $OpenBSD: Makefile,v 1.2 2021/11/28 12:41:28 sthen Exp $

COMMENT =		RSS/Atom newsreader and formatting programs
DISTNAME =		sfeed-1.1
CATEGORIES =		www

HOMEPAGE =		https://codemadness.org/sfeed.html

MAINTAINER =		Hiltjo Posthuma <hiltjo@codemadness.org>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://codemadness.org/releases/sfeed/

# uses pledge()
# uses unveil()
WANTLIB +=		c curses

MAKE_FLAGS =		CC='${CC}' \
			CFLAGS='${CFLAGS}' \
			LDFLAGS='${LDFLAGS}' \
			COMPATOBJ=''

# (optional) run-time dependencies for sfeed_update script:
# * iconv: needed only for feeds that are not UTF-8 encoded.
# * xdg-open: for opening links or enclosures in sfeed_curses.
# * xclip: for copying a link to the clipboard in sfeed_curses.
# * lynx: for converting HTML to plain-text in sfeed_content.
RUN_DEPENDS =		converters/libiconv

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/sfeed

# copy example for OpenBSD which uses the base ftp program (instead of curl).
post-build:
	cd ${WRKBUILD} && cp ${FILESDIR}/sfeedrc.example sfeedrc.example

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/
	mv ${PREFIX}/share/doc/sfeed/sfeedrc.example ${EXAMPLESDIR}/

.include <bsd.port.mk>
