# $OpenBSD: Makefile,v 1.26 2000/04/20 01:17:11 kevlo Exp $

DATE=		20000417
DISTNAME=	mtools-3.9.6
PKGNAME=	mtools-3.9.6.${DATE}
CATEGORIES=	sysutils
NEED_VERSION=	1.175
MASTER_SITES=	ftp://ftp.tux.org/pub/tux/knaff/mtools/

PATCHFILES=	mtools-3.9.6-${DATE}.diff.gz

MAINTAINER=	fgsch@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=--prefix='$${DESTDIR}${PREFIX}' --sysconfdir='$${DESTDIR}/etc'
FAKE=		Yes
SEPARATE_BUILD=	Simple

pre-patch:
	@/bin/ln -s . ${WRKSRC}/mtools

post-patch:
	@/bin/rm ${WRKSRC}/mtools

.include <bsd.port.mk>
