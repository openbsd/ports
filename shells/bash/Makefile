# $OpenBSD: Makefile,v 1.79 2014/03/10 11:58:31 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.3
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=bash/}
DIST_SUBDIR=	bash

MODULES=	devel/gettext
WANTLIB=	c termcap 

# enable if parse.y is patched
#BUILD_DEPENDS=	devel/bison
#YACC=		${LOCALBASE}/bin/bison -y

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${NO_SHARED_LIBS:S/Yes/--enable-static-link/:S/No//}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
