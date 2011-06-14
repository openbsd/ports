# $OpenBSD: Makefile,v 1.2 2011/06/14 11:34:50 jasper Exp $

COMMENT=	provide patterns for CIDR blocks

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Regexp-Common-net-CIDR-0.02
CATEGORIES=	net textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	textproc/p5-Regexp-Common
RUN_DEPENDS=	${BUILD_DEPENDS}

.include <bsd.port.mk>
