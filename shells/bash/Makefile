# $OpenBSD: Makefile,v 1.34 2005/05/11 19:02:40 espie Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-3.0
PKGNAME=	bash-3.0.16p1
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
MASTER_SITES0=	ftp://ftp.cwru.edu/pub/bash/bash-3.0-patches/
DIST_SUBDIR=	bash
.for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16
PATCHFILES+=	bash30-0$i:0
.endfor

MODULES=	devel/gettext

FLAVORS=	static
FLAVOR?=

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.if ${FLAVOR:L:Mstatic}
CONFIGURE_ARGS=	--enable-static-link
.else
WANTLIB=	c termcap 
.endif
CONFIGURE_ARGS+=--disable-multibyte

.include <bsd.port.mk>
