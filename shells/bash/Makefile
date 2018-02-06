# $OpenBSD: Makefile,v 1.106 2018/02/06 22:48:48 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.4.18
PKGNAME=	bash-4.4.19
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.4-patches/}
DIST_SUBDIR=	bash
.for i in 19
PATCHFILES+=	bash44-0$i:0
.endfor

LIB_DEPENDS=	devel/gettext
WANTLIB=	c curses iconv intl

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
