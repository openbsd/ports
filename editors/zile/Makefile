# $OpenBSD: Makefile,v 1.3 2004/11/24 11:08:04 espie Exp $

COMMENT=		"zile is lossy emacs"

DISTNAME=		zile-1.6.2
CATEGORIES=		editors

HOMEPAGE=		http://zile.sourceforge.net/


# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zile/}
CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-xterm-support

.include <bsd.port.mk>
