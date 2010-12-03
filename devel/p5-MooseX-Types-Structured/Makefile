# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=		structured Type Constraints for Moose

DISTNAME=		MooseX-Types-Structured-0.19
REVISION=		1

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Devel-PartialDump \
			devel/p5-MooseX-Types \
			devel/p5-Sub-Exporter
BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_DEPENDS=	devel/p5-Test-Exception
.include <bsd.port.mk>
