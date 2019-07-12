# $OpenBSD: Makefile,v 1.19 2019/07/12 20:49:47 sthen Exp $

COMMENT=		capture STDOUT and STDERR

CPAN_AUTHOR=	DAGOLDEN
MODULES=		cpan
PKG_ARCH=		*

DISTNAME=		Capture-Tiny-0.48
CATEGORIES=		sysutils

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes

# There is no target to install them
post-install:
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
