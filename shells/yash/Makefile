# $OpenBSD: Makefile,v 1.1.1.1 2016/04/21 20:41:09 naddy Exp $

COMMENT=	POSIX-compliant command line shell

DISTNAME=	yash-2.41
CATEGORIES=	shells
HOMEPAGE=	https://yash.osdn.jp/index.html.en

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://dl.osdn.jp/yash/64861/
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c curses intl m
LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" \
		--mandir="${PREFIX}/man"
CONFIGURE_ENV=	CPPFLAGS="-std=c99 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
