# $OpenBSD: Makefile,v 1.37 2001/09/04 22:58:21 fgsch Exp $

COMMENT=	read/write/list/format DOS disks under Unix

DATE=		20010819
DISTNAME=	mtools-3.9.8
PKGNAME=	mtools-3.9.8.${DATE}
CATEGORIES=	sysutils
NEED_VERSION=	1.406
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCHFILES=	mtools-3.9.8-${DATE}.diff.gz

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://alain.knaff.linux.lu/mtools/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu dest
SEPARATE_BUILD=	Simple

pre-patch:
	@ln -s . ${WRKSRC}/mtools

post-patch:
	@rm ${WRKSRC}/mtools

.include <bsd.port.mk>
