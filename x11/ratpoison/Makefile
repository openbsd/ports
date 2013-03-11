# $OpenBSD: Makefile,v 1.26 2013/03/11 11:46:15 espie Exp $

COMMENT=	minimal wm based on GNU screen

DISTNAME=	ratpoison-1.4.5

CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xext Xft Xinerama Xtst c

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=ratpoison/}

USE_GROFF =		Yes

AUTOCONF_VERSION =	2.61

CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm \
			--disable-history

.include <bsd.port.mk>
