# $OpenBSD: Makefile,v 1.16 2002/05/11 22:31:24 matt Exp $

COMMENT=		"convert ASCII files to PostScript"

DISTNAME=		enscript-1.6.3
NEED_VERSION=		1.527
CATEGORIES=     	print

MAINTAINER=		Matt Behrens <matt@openbsd.org>

HOMEPAGE=		http://people.ssh.fi/mtr/genscript/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://people.ssh.fi/mtr/genscript/ \
			${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	enscript

CONFIGURE_STYLE=	gnu automake
CONFIGURE_ARGS+=	--with-media=Letter

.include <bsd.port.mk>

