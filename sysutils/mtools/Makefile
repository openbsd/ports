# $OpenBSD: Makefile,v 1.8 1999/06/03 06:56:38 fgsch Exp $
#

DISTNAME=	mtools-3.9.5
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCH_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
PATCHFILES=	mtools-3.9.5-0905.diff.gz

MAINTAINER=	ports@openbsd.org

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

INFO_FILES=	mtools.info

pre-patch:
	@${LN} -s . ${WRKSRC}/mtools

post-patch:
	@${RM} ${WRKSRC}/mtools

.include <bsd.port.mk>
