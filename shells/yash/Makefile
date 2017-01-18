# $OpenBSD: Makefile,v 1.4 2017/01/18 23:10:42 naddy Exp $

COMMENT=	POSIX-compliant command line shell

DISTNAME=	yash-2.44
RELEASE=	66984
CATEGORIES=	shells
HOMEPAGE=	https://yash.osdn.jp/index.html.en

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_OSDN_JP:=/yash/${RELEASE}/}
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c curses intl m
LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" \
		--mandir="${PREFIX}/man"
CONFIGURE_ENV=	CPPFLAGS="-std=c99 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
