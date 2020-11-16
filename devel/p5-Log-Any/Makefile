# $OpenBSD: Makefile,v 1.16 2020/11/16 07:10:29 giovanni Exp $

COMMENT=		bringing loggers and listeners together

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Log-Any-1.708
CATEGORIES=		devel
REVISION=		0

MAINTAINER=		Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	perl

pre-configure:
			@find ${WRKSRC} -name "*.orig" -delete

.include <bsd.port.mk>
