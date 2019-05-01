# $OpenBSD: Makefile,v 1.18 2019/05/01 00:47:45 cwen Exp $

COMMENT=		capture STDOUT and STDERR

CPAN_AUTHOR=	DAGOLDEN
MODULES=		cpan
PKG_ARCH=		*

DISTNAME=		Capture-Tiny-0.48
CATEGORIES=		sysutils

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODCPAN_EXAMPLES=	Yes

# There is no target to install them
post-install:
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
