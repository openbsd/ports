# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:03 espie Exp $

COMMENT=		logging role for Moose

DISTNAME=		MooseX-LogDispatch-1.2000
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-IO-stringy \
			::devel/p5-Log-Dispatch-Config \
			::devel/p5-Moose \
			::devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
