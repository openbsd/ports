# $OpenBSD: Makefile,v 1.30 2000/07/03 14:56:47 fgsch Exp $

DATE=		20000703
DISTNAME=	mtools-3.9.7
PKGNAME=	mtools-3.9.7.${DATE}
CATEGORIES=	sysutils
NEED_VERSION=	1.309
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCHFILES=	mtools-3.9.7-${DATE}.diff.gz

MAINTAINER=	fgsch@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu dest
SEPARATE_BUILD=	Simple

pre-patch:
	@/bin/ln -s . ${WRKSRC}/mtools

post-patch:
	@/bin/rm ${WRKSRC}/mtools

.include <bsd.port.mk>
