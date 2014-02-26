# $OpenBSD: Makefile,v 1.29 2014/02/26 20:07:18 jca Exp $

COMMENT=	minimal wm based on GNU screen

DISTNAME=	ratpoison-1.4.6
REVISION=	1

CATEGORIES=	x11
HOMEPAGE=	http://www.nongnu.org/ratpoison/

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=		X11 Xext Xft Xinerama Xtst c

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=ratpoison/}

SEPARATE_BUILD=		Yes
USE_GROFF=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm \
			--disable-history

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mno_shared}
CONFIGURE_ARGS+=	--without-xft
CONFIGURE_ENV+=		X_EXTRA_LIBS="-lxcb -lXau -lXdmcp"
.endif

.include <bsd.port.mk>
