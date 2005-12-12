# $OpenBSD: Makefile,v 1.35 2005/12/12 20:20:31 naddy Exp $

COMMENT=	"GNU Bourne Again Shell"

DISTNAME=	bash-3.1
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

MODULES=	devel/gettext
WANTLIB=	c termcap 

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-multibyte	# missing wcscoll(3)
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.include <bsd.port.mk>
