# $OpenBSD: Makefile,v 1.2 2010/01/13 09:32:54 jasper Exp $

COMMENT=		logging role for Moose

DISTNAME=		MooseX-LogDispatch-1.2000
PKGNAME=		p5-${DISTNAME}p0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-IO-stringy \
			::devel/p5-Log-Dispatch-Config \
			::devel/p5-Moose \
			::devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
