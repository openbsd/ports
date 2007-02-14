# $OpenBSD: Makefile,v 1.11 2007/02/14 17:59:33 bernd Exp $

COMMENT=		"code browsing program"

DISTNAME=		cscope-15.6
CATEGORIES=     	devel

HOMEPAGE=		http://cscope.sourceforge.net/

MAINTAINER=		Matthew Kolb <muk@msu.edu>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cscope/}

CONFIGURE_STYLE=	gnu

post-install:
	cd ${WRKSRC}; ${INSTALL_SCRIPT} contrib/xcscope/cscope-indexer \
		${PREFIX}/bin/cscope-indexer
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	cd ${WRKSRC}; ${INSTALL_DATA} contrib/xcscope/xcscope.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
