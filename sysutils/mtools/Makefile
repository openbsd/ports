# $OpenBSD: Makefile,v 1.38 2002/10/05 19:09:26 fgsch Exp $

COMMENT=	read/write/list/format DOS disks under Unix

DATE=		20020203
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

CONFIGURE_STYLE=	gnu dest
SEPARATE_BUILD=	Simple

pre-patch:
	@ln -s . ${WRKSRC}/mtools

post-patch:
	@rm ${WRKSRC}/mtools

.include <bsd.port.mk>
