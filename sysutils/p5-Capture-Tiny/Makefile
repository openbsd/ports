# $OpenBSD: Makefile,v 1.20 2020/07/03 21:45:43 sthen Exp $

COMMENT=		capture STDOUT and STDERR

CPAN_AUTHOR=	DAGOLDEN
MODULES=		cpan
PKG_ARCH=		*

DISTNAME=		Capture-Tiny-0.48
CATEGORIES=		sysutils
REVISION=		0

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODCPAN_EXAMPLES=	Yes

# There is no target to install them
post-install:
	${MODCPAN_POST_INSTALL}

.include <bsd.port.mk>
