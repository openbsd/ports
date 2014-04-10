# $OpenBSD: Makefile,v 1.80 2014/04/10 11:59:08 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.3
PKGNAME=	${DISTNAME}.8
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/${DISTNAME}-patches/}
DIST_SUBDIR=	bash
.for i in 01 02 03 04 05 06 07 08
PATCHFILES+=	bash43-0$i:0
.endfor

MODULES=	devel/gettext
WANTLIB=	c termcap 

# enable if parse.y is patched
BUILD_DEPENDS=	devel/bison
YACC=		${LOCALBASE}/bin/bison -y

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${NO_SHARED_LIBS:S/Yes/--enable-static-link/:S/No//}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
