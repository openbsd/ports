# $OpenBSD: Makefile,v 1.1.1.1 2010/01/12 09:42:20 jasper Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME=		MooseX-Types-Structured-0.19

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-Devel-PartialDump \
			::devel/p5-MooseX-Types \
			::devel/p5-Sub-Exporter

REGRESS_DEPENDS=	::devel/p5-Test-Exception
.include <bsd.port.mk>
