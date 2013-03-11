# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:18 espie Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
DISTNAME=	Log-Dispatch-FileRotate-1.19
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		converters/p5-DateManip \
			devel/p5-Log-Dispatch \
			devel/p5-Params-Validate \
			devel/p5-Log-Log4perl

.include <bsd.port.mk>
