# $OpenBSD: Makefile,v 1.3 1999/03/23 14:32:10 fgsch Exp $
#

DISTNAME=	mtools-3.9.4
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCH_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
PATCHFILES=	mtools-3.9.4-1903b.diff.gz

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

INFO_FILES=	mtools.info

pre-patch:
	@${LN} -s . ${WRKSRC}/mtools

post-patch:
	@${RM} ${WRKSRC}/mtools

.include <bsd.port.mk>
