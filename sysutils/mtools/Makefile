# $OpenBSD: Makefile,v 1.21 2000/02/12 08:02:31 turan Exp $

DATE=		19991121
DISTNAME=	mtools-3.9.6
PKGNAME=	mtools-3.9.6-${DATE}
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/
NEED_VERSION=	1.175

PATCHFILES=	mtools-3.9.6-${DATE}.diff.gz

MAINTAINER=	fgsch@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_GMAKE=	yes
GNU_CONFIGURE=	yes

pre-patch:
	@/bin/ln -s . ${WRKSRC}/mtools

post-patch:
	@/bin/rm ${WRKSRC}/mtools

.include <bsd.port.mk>
