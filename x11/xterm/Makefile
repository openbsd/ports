# $OpenBSD: Makefile,v 1.10 2000/11/18 13:29:32 naddy Exp $

DISTNAME=	xterm-148
CATEGORIES=	x11
NEED_VERSION=	1.340

HOMEPAGE=	http://dickey.his.com/xterm/xterm.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	col256 no_tek xaw3d
FLAVOR?=

MASTER_SITES=	ftp://dickey.his.com/xterm/
EXTRACT_SUFX=	.tgz

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-wide-chars
CFLAGS+=		-DUSE_POSIX_TERMIOS=1

.if ${FLAVOR:L:Mcol256}
CONFIGURE_ARGS+=	--enable-256-color
.endif
.if ${FLAVOR:L:Mno_tek}
CONFIGURE_ARGS+=	--disable-tek4014
.endif
.if ${FLAVOR:L:Mxaw3d}
LIB_DEPENDS+=		Xaw3d.6.1::x11/Xaw3d
CONFIGURE_ARGS+=	--with-Xaw3d
.endif

.include <bsd.port.mk>
