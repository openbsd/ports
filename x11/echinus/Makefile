# $OpenBSD: Makefile,v 1.3 2011/09/01 20:59:19 landry Exp $

COMMENT=		simple, lightweight tiling and floating window manager

DISTNAME=		echinus-0.4.7
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://plhk.ru/

MAINTAINER=		Alexander Polakov <polachok@gmail.com>

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xdmcp Xft Xrandr Xrender c expat fontconfig
WANTLIB += freetype pthread-stubs xcb z

MASTER_SITES=		${HOMEPAGE}/static/echinus/

MAKE_ENV=		BINPREFIX="${LOCALBASE}/bin"
MAKE_ENV+=		MANPREFIX="${LOCALBASE}/man"
MAKE_ENV+=		DOCPREFIX="${LOCALBASE}/share/doc"
MAKE_ENV+=		CONFPREFIX="${LOCALBASE}/share/examples"
MAKE_ENV+=		CONF="${SYSCONFDIR}/xdg/echinus"
MAKE_ENV+=		CLFAGS_EXTRA="${CFLAGS}"
MAKE_ENV+=		CC="${CC}"

NO_REGRESS=		Yes

.include <bsd.port.mk>
