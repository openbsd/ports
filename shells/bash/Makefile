# $OpenBSD: Makefile,v 1.29 2004/10/09 19:25:38 naddy Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-3.0
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
.for i in 001 002 003 004 005 006 007 008 009 010 011 012 013
PATCHFILES+=	bash30-$i:0
.endfor

MODULES=	devel/gettext

FLAVORS=	static
FLAVOR?=

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.if ${FLAVOR:L:Mstatic}
CONFIGURE_ARGS=	--enable-static-link
.endif

.include <bsd.port.mk>
