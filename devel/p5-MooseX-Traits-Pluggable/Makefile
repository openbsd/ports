# $OpenBSD: Makefile,v 1.1.1.1 2012/04/08 21:05:04 sthen Exp $

COMMENT =	trait loading and resolution for Moose

MODULES =	cpan
DISTNAME =	MooseX-Traits-Pluggable-0.10
CATEGORIES =	devel

# same as perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils \
		devel/p5-Moose \
		devel/p5-namespace-autoclean

REGRESS_DEPENDS =	devel/p5-Test-Exception

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
