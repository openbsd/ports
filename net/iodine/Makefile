# $OpenBSD: Makefile,v 1.2 2008/02/07 12:42:11 sthen Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.4.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://code.kryo.se/iodine/

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

REGRESS_DEPENDS=	::devel/check
REGRESS_TARGET=		test

.include <bsd.port.mk>
