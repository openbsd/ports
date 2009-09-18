# $OpenBSD: Makefile,v 1.54 2009/09/18 17:28:39 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.0
PKGNAME=	${DISTNAME}.33
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/${DISTNAME}-patches/}
DIST_SUBDIR=	bash
.for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 \
          21 22 23 24 25 26 27 28 29 30 31 32 33
PATCHFILES+=	bash40-0$i:0
.endfor

MODULES=	devel/gettext
WANTLIB=	c termcap 

BUILD_DEPENDS=	::devel/bison
YACC=		${LOCALBASE}/bin/bison

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-multibyte	# missing wcscoll(3)
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
