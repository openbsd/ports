# $OpenBSD: Makefile,v 1.14 2000/12/21 21:20:48 naddy Exp $

DISTNAME=		enscript-1.6.1
NEED_VERSION=		1.319
CATEGORIES=     	print

MAINTAINER=		Matt Behrens <matt@openbsd.org>

HOMEPAGE=		http://people.ssh.fi/mtr/genscript/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	enscript

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-media=Letter

.include <bsd.port.mk>

