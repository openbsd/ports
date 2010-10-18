# $OpenBSD: Makefile,v 1.9 2010/10/18 18:36:48 espie Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.5.2
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://code.kryo.se/iodine/

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

USE_GROFF =	Yes
MAKE_ENV=		CC=${CC}
REGRESS_DEPENDS=	::devel/check
REGRESS_TARGET=		test

.include <bsd.port.mk>
