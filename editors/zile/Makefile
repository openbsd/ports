# $OpenBSD: Makefile,v 1.2 2004/01/30 17:04:48 lebel Exp $

COMMENT=		"zile is lossy emacs"

DISTNAME=		zile-1.6.2
CATEGORIES=		editors

HOMEPAGE=		http://zile.sourceforge.net/


# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=zile/}
CONFIGURE_STYLE=	simple

CONFIGURE_ARGS=		${CONFIGURE_SHARED} --enable-xterm-support

.include <bsd.port.mk>
