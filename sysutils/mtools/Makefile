# $OpenBSD: Makefile,v 1.19 2000/02/02 17:08:06 espie Exp $

DATE=		19991121
DISTNAME=	mtools-3.9.6
PKGNAME=	mtools-3.9.6-${DATE}
CATEGORIES=	sysutils
DIST_SUBDIR=	mtools
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
NEED_VERSION=	1.175

PATCHFILES=	mtools-3.9.6-${DATE}.diff.gz

MAINTAINER=	fgsch@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

pre-patch:
	@/bin/ln -s . ${WRKSRC}/mtools

post-patch:
	@/bin/rm ${WRKSRC}/mtools

.include <bsd.port.mk>
