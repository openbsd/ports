# $OpenBSD: Makefile,v 1.93 2015/06/06 20:23:36 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.3.30
PKGNAME=	bash-4.3.39
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	${MASTER_SITE_GNU:=bash/bash-4.3-patches/}
DIST_SUBDIR=	bash
.for i in 31 32 33 34 35 36 37 38 39
PATCHFILES+=	bash43-0$i:0
.endfor

MODULES=	devel/gettext
WANTLIB=	c termcap 

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${NO_SHARED_LIBS:S/Yes/--enable-static-link/:S/No//}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
