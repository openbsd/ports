# $OpenBSD: Makefile,v 1.10 2000/07/28 03:14:58 matt Exp $

DISTNAME=		enscript-1.6.1
CATEGORIES=     	print

MAINTAINER=		matt@openbsd.org

HOMEPAGE=		http://people.ssh.fi/mtr/genscript/

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	enscript

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-media=Letter

.include <bsd.port.mk>

