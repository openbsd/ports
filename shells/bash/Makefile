# $OpenBSD: Makefile,v 1.125 2021/12/02 13:31:53 naddy Exp $

PORTROACH=	skipv:5.1.8

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-5.1
PKGNAME=	bash-5.1.12
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-5.1-patches/}
DIST_SUBDIR=	bash
.for i in 001 002 003 004 005 006 007 008 009 010 \
          011 012
PATCHFILES+=	bash51-$i:0
.endfor

LIB_DEPENDS=	devel/gettext,-runtime
WANTLIB=	c curses iconv intl

DEBUG_PACKAGES=	${BUILD_PACKAGES}

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--without-bash-malloc

.include <bsd.port.mk>
