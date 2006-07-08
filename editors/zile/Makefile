# $OpenBSD: Makefile,v 1.11 2006/07/08 14:56:59 naddy Exp $

COMMENT=		"zile is lossy emacs"

DISTNAME=		zile-2.2.15
CATEGORIES=		editors
HOMEPAGE=		http://zile.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zile/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--infodir='$${prefix}/info' \
			--mandir='$${prefix}/man'

.include <bsd.port.mk>
