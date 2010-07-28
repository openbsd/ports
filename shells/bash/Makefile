# $OpenBSD: Makefile,v 1.60 2010/07/28 20:25:11 naddy Exp $

COMMENT=	GNU Bourne Again Shell

DISTNAME=	bash-4.1
PKGNAME=	${DISTNAME}.7
REVISION=	0
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
.for i in 01 02 03 04 05 06 07
PATCHFILES+=	bash41-0$i:0
.endfor

MODULES=	devel/gettext
WANTLIB=	c termcap 

# enable if parse.y is patched
#BUILD_DEPENDS=	::devel/bison
#YACC=		${LOCALBASE}/bin/bison -y

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
