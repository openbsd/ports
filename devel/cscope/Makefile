COMMENT =		code browsing program

DISTNAME =		cscope-15.9
CATEGORIES =     	devel
REVISION =		1

HOMEPAGE =		https://cscope.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c curses

SITES =			${SITE_SOURCEFORGE:=cscope/}

CONFIGURE_STYLE =	gnu

post-install:
	@cd ${WRKSRC}; ${INSTALL_SCRIPT} contrib/xcscope/cscope-indexer \
		${PREFIX}/bin/cscope-indexer
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	@cd ${WRKSRC}; ${INSTALL_DATA} contrib/xcscope/xcscope.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
