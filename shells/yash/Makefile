# $OpenBSD: Makefile,v 1.9 2020/03/12 20:36:11 naddy Exp $

COMMENT=	POSIX-compliant command line shell

DISTNAME=	yash-2.49
RELEASE=	71638
CATEGORIES=	shells
HOMEPAGE=	https://yash.osdn.jp/index.html.en

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_OSDN_JP:=yash/${RELEASE}/}
EXTRACT_SUFX=	.tar.xz

WANTLIB=	c curses intl m
LIB_DEPENDS=	devel/gettext,-runtime

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" \
		--mandir="${PREFIX}/man"
CONFIGURE_ENV=	CPPFLAGS="-std=c99 -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# The test script fails if none of LC_ALL, LC_CTYPE, or LANG is set
TEST_ENV=       LC_CTYPE=C

.include <bsd.port.mk>
