# $OpenBSD: Makefile,v 1.8 2014/03/21 15:08:31 jasper Exp $

COMMENT=		logging role for Moose

DISTNAME=		MooseX-LogDispatch-1.2002

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-IO-stringy \
			devel/p5-Log-Dispatch-Config \
			devel/p5-Moose \
			devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
