# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:27 naddy Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Log-Dispatch-FileRotate-1.19
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		converters/p5-DateManip \
			devel/p5-Log-Dispatch \
			devel/p5-Params-Validate \
			devel/p5-Log-Log4perl

.include <bsd.port.mk>
