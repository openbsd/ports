# $OpenBSD: Makefile,v 1.39 2006/03/11 15:13:26 naddy Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-3.1
PKGNAME=	${DISTNAME}.11
CATEGORIES=	shells
HOMEPAGE=	http://cnswww.cns.cwru.edu/~chet/bash/bashtop.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cwru.edu/pub/bash/ \
		${MASTER_SITE_GNU:=bash/}
MASTER_SITES0=	ftp://ftp.cwru.edu/pub/bash/${DISTNAME}-patches/
DIST_SUBDIR=	bash
.for i in 01 02 03 04 05 06 07 08 09 10 11
PATCHFILES+=	bash31-0$i:0
.endfor

MODULES=	devel/gettext
WANTLIB=	c termcap 

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-multibyte	# missing wcscoll(3)
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
