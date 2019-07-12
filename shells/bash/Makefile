# $OpenBSD: Makefile,v 1.113 2019/07/12 20:49:38 sthen Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-5.0
PKGNAME=	bash-5.0.7
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/
REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-5.0-patches/}
DIST_SUBDIR=	bash
.for i in 001 002 003 004 005 006 007
PATCHFILES+=	bash50-$i:0
.endfor

LIB_DEPENDS=	devel/gettext,-runtime
WANTLIB=	c curses iconv intl

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
