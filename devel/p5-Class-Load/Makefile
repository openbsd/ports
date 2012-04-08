# $OpenBSD: Makefile,v 1.1.1.1 2012/04/08 21:02:10 sthen Exp $

COMMENT =	a working 'require Class::Name' and more

MODULES =	cpan
DISTNAME =	Class-Load-0.12
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-Data-OptList \
		devel/p5-Module-Runtime \
		devel/p5-Package-Stash>=0.32 \
		devel/p5-Try-Tiny

REGRESS_DEPENDS =	devel/p5-Test-Fatal

.include <bsd.port.mk>
