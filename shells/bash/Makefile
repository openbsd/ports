# $OpenBSD: Makefile,v 1.109 2019/02/12 22:48:42 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-5.0
PKGNAME=	bash-5.0.2
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-5.0-patches/}
DIST_SUBDIR=	bash
.for i in 001 002
PATCHFILES+=	bash50-$i:0
.endfor

LIB_DEPENDS=	devel/gettext
WANTLIB=	c curses iconv intl

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
