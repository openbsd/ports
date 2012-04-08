# $OpenBSD: Makefile,v 1.1.1.1 2012/04/08 21:04:36 sthen Exp $

COMMENT =	easy subclassing of non-Moose classes

MODULES =	cpan
DISTNAME =	MooseX-NonMoose-0.22
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Moose

REGRESS_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
