# $OpenBSD: Makefile,v 1.39 2002/11/30 08:32:36 fgsch Exp $

COMMENT=	read/write/list/format DOS disks under Unix

DATE=		20021118
DISTNAME=	mtools-3.9.8
PKGNAME=	mtools-3.9.8.${DATE}
CATEGORIES=	sysutils
MASTER_SITES=	http://www.tux.org/pub/knaff/mtools/ \
		${HOMEPAGE}

PATCHFILES=	mtools-3.9.8-${DATE}.diff.gz

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://mtools.linux.lu/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoconf dest
SEPARATE_BUILD=		Simple

pre-patch:
	@ln -s . ${WRKSRC}/mtools

post-patch:
	@rm ${WRKSRC}/mtools

.include <bsd.port.mk>
