# $OpenBSD: Makefile,v 1.3 2011/10/05 17:30:58 jasper Exp $

COMMENT=	provide patterns for CIDR blocks

MODULES=	cpan
REVISION=	0

DISTNAME=	Regexp-Common-net-CIDR-0.02
CATEGORIES=	net textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-Regexp-Common
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
