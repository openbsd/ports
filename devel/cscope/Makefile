# $OpenBSD: Makefile,v 1.18 2015/04/11 12:09:25 benoit Exp $

COMMENT =		code browsing program

DISTNAME =		cscope-15.8b
CATEGORIES =     	devel

HOMEPAGE =		http://cscope.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ncurses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cscope/}

CONFIGURE_STYLE =	gnu

post-install:
	@cd ${WRKSRC}; ${INSTALL_SCRIPT} contrib/xcscope/cscope-indexer \
		${PREFIX}/bin/cscope-indexer
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	@cd ${WRKSRC}; ${INSTALL_DATA} contrib/xcscope/xcscope.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
