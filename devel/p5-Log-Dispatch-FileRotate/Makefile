# $OpenBSD: Makefile,v 1.8 2013/10/11 23:48:57 naddy Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
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
