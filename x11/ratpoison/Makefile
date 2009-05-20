# $OpenBSD: Makefile,v 1.18 2009/05/20 03:16:12 sthen Exp $

COMMENT=	minimal wm based on GNU screen

DISTNAME=	ratpoison-1.4.4
CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xft Xinerama Xrender Xtst c expat fontconfig freetype z

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=ratpoison/}

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm \
			--disable-history

.include <bsd.port.mk>
