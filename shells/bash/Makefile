# $OpenBSD: Makefile,v 1.70 2012/05/03 17:17:34 rpointel Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.2
PKGNAME=	${DISTNAME}.28
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
          21 22 23 24 25 26 27 28
PATCHFILES+=	bash42-0$i:0
.endfor

MODULES=	devel/gettext
USE_GROFF =	Yes
WANTLIB=	c termcap 

# enable if parse.y is patched
BUILD_DEPENDS=	devel/bison
YACC=		${LOCALBASE}/bin/bison -y

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${NO_SHARED_LIBS:S/Yes/--enable-static-link/:S/No//}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
