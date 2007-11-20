# $OpenBSD: Makefile,v 1.1.1.1 2007/11/20 18:43:21 merdely Exp $

COMMENT=	log to files that archive/rotate themselves

MODULES=	cpan
DISTNAME=	Log-Dispatch-FileRotate-1.16
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::converters/p5-DateManip \
			::devel/p5-Log-Dispatch \
			::devel/p5-Params-Validate

REGRESS_DEPENDS=	::devel/p5-Log-Log4perl

.include <bsd.port.mk>
