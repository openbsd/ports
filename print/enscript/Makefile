# $OpenBSD: Makefile,v 1.15 2001/03/25 19:17:47 matt Exp $

COMMENT=		"convert ASCII files to PostScript"

DISTNAME=		enscript-1.6.1
NEED_VERSION=		1.361
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

