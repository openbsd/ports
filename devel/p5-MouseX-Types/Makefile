# $OpenBSD: Makefile,v 1.1.1.1 2012/04/22 20:30:38 sthen Exp $

COMMENT =	organize your Mouse types in libraries

MODULES =	cpan
DISTNAME =	MouseX-Types-0.06
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-Mouse

REGRESS_DEPENDS =	devel/p5-Any-Moose \
			devel/p5-Test-Exception

.include <bsd.port.mk>
