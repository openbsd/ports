# $OpenBSD: Makefile,v 1.28 2004/08/10 09:26:14 xsa Exp $

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

MODULES=	devel/gettext

FLAVORS=	static
FLAVOR?=

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support

.if ${FLAVOR:L:Mstatic}
CONFIGURE_ARGS=	--enable-static-link
.endif

.include <bsd.port.mk>
