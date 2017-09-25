# $OpenBSD: Makefile,v 1.105 2017/09/25 09:16:13 robert Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.4
PKGNAME=	${DISTNAME}.12
CATEGORIES=	shells
HOMEPAGE=	https://www.gnu.org/software/bash/

REVISION=	0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.4-patches/}
DIST_SUBDIR=	bash
.for i in 01 02 03 04 05 06 07 08 09 10 11 12
PATCHFILES+=	bash44-0$i:0
.endfor

LIB_DEPENDS=	devel/gettext
WANTLIB=	c iconv intl termcap 

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
