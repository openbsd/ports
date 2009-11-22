# $OpenBSD: Makefile,v 1.5 2009/11/22 17:31:22 jasper Exp $

COMMENT=		tunnel IPv4 data through DNS

DISTNAME=		iodine-0.5.2
CATEGORIES=		net

HOMEPAGE=		http://code.kryo.se/iodine/

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c z

MAKE_ENV=		CC=${CC}
REGRESS_DEPENDS=	::devel/check
REGRESS_TARGET=		test

# gcc 3.3.5 internal compiler error
.if ${MACHINE_ARCH} == "mips64"
CFLAGS+=        -O0
.endif

.include <bsd.port.mk>
