# $OpenBSD: Makefile,v 1.3 2009/03/23 14:00:38 jasper Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
DISTNAME=	Log-Dispatch-FileRotate-1.19
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::converters/p5-DateManip \
			::devel/p5-Log-Dispatch \
			::devel/p5-Params-Validate \
			::devel/p5-Log-Log4perl

.include <bsd.port.mk>
