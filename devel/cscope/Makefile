# $OpenBSD: Makefile,v 1.23 2019/07/12 20:44:06 sthen Exp $

COMMENT =		code browsing program

DISTNAME =		cscope-15.9
CATEGORIES =     	devel
REVISION =		0

HOMEPAGE =		http://cscope.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c curses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cscope/}

CONFIGURE_STYLE =	gnu

post-install:
	@cd ${WRKSRC}; ${INSTALL_SCRIPT} contrib/xcscope/cscope-indexer \
		${PREFIX}/bin/cscope-indexer
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	@cd ${WRKSRC}; ${INSTALL_DATA} contrib/xcscope/xcscope.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
