# $OpenBSD: Makefile,v 1.15 1999/11/10 05:48:03 fgsch Exp $

DATE=		19991012
DISTNAME=	mtools-3.9.6
PKGNAME=	mtools-3.9.6-${DATE}
CATEGORIES=	sysutils
DIST_SUBDIR=	mtools
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCH_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
PATCHFILES=	mtools-3.9.6-${DATE}.diff.gz

MAINTAINER=	fgsch@openbsd.org

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

pre-patch:
	@${LN} -s . ${WRKSRC}/mtools

post-patch:
	@${RM} ${WRKSRC}/mtools

.include <bsd.port.mk>
