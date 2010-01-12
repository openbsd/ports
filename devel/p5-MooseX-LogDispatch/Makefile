# $OpenBSD: Makefile,v 1.1.1.1 2010/01/12 19:19:48 jasper Exp $

COMMENT=		logging role for Moose

DISTNAME=		MooseX-LogDispatch-1.2000

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-Log-Dispatch-Config \
			::devel/p5-Moose \
			::devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
