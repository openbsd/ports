# $OpenBSD: Makefile,v 1.23 2002/03/26 11:30:43 naddy Exp $

COMMENT=	"newer version of xterm"

DISTNAME=	xterm-166
CATEGORIES=	x11
NEED_VERSION=	1.516
HOMEPAGE=	http://invisible-island.net/xterm/xterm.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://invisible-island.net/xterm/
EXTRACT_SUFX=	.tgz

FLAVORS=	col256 no_tek xaw3d
FLAVOR?=

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-wide-chars

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
