# $OpenBSD: Makefile,v 1.102 2016/11/11 22:39:48 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.4
PKGNAME=	${DISTNAME}.5
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.4-patches/}
DIST_SUBDIR=	bash
.for i in 01 02 03 04 05
PATCHFILES+=	bash44-0$i:0
.endfor

LIB_DEPENDS=	devel/gettext
WANTLIB=	c iconv intl termcap 

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
