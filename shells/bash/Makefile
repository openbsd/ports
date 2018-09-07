# $OpenBSD: Makefile,v 1.108 2018/09/07 21:11:14 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.4.18
PKGNAME=	bash-4.4.23
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.4-patches/}
DIST_SUBDIR=	bash
.for i in 19 20 21 22 23
PATCHFILES+=	bash44-0$i:0
.endfor

LIB_DEPENDS=	devel/gettext
WANTLIB=	c curses iconv intl

ALL_TARGET=	all loadables
CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
