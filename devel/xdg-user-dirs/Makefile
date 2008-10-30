# $OpenBSD: Makefile,v 1.1.1.1 2008/10/30 16:28:38 ajacoutot Exp $

COMMENT=	utilities to manage well know user directories

DISTNAME=	xdg-user-dirs-0.10
CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/xdg-user-dirs/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://user-dirs.freedesktop.org/releases/

WANTLIB=	c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/xdg-user-dirs

.include <bsd.port.mk>
