# $OpenBSD: Makefile,v 1.1.1.1 1999/02/28 11:18:13 fgsch Exp $
#

DISTNAME=	mtools-3.9.1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCH_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
PATCHFILES=	mtools-3.9.1-1502.diff.gz

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

INFO_FILES=	mtools.info

pre-patch:
	@${LN} -s . ${WRKSRC}/mtools

post-patch:
	@${RM} ${WRKSRC}/mtools

.include <bsd.port.mk>
