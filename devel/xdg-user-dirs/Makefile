# $OpenBSD: Makefile,v 1.9 2011/04/10 08:21:42 ajacoutot Exp $

COMMENT=	utilities to manage well know user directories

DISTNAME=	xdg-user-dirs-0.13
CATEGORIES=	devel

HOMEPAGE=	http://freedesktop.org/wiki/Software/xdg-user-dirs/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://user-dirs.freedesktop.org/releases/

WANTLIB=	c

MODULES=	devel/gettext

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/xdg-user-dirs

.include <bsd.port.mk>
