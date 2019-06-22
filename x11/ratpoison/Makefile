# $OpenBSD: Makefile,v 1.35 2019/06/22 22:44:07 jca Exp $

COMMENT=	minimal wm based on GNU screen

DISTNAME=	ratpoison-1.4.9

CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xft Xrandr Xtst c

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=ratpoison/}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm

.include <bsd.port.mk>
