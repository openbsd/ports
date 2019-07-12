# $OpenBSD: Makefile,v 1.8 2019/07/12 20:49:38 sthen Exp $

COMMENT=	POSIX-compliant command line shell

DISTNAME=	yash-2.48
RELEASE=	70439
CATEGORIES=	shells
HOMEPAGE=	https://yash.osdn.jp/index.html.en
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_OSDN_JP:=/yash/${RELEASE}/}
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

# Expected test failures due to differences between BSD and GNU utilities:
# input-p:  head(1) consumes all input
# printf-y: wc(1) pads its output with spaces

.include <bsd.port.mk>
