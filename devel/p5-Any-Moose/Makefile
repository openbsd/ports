# $OpenBSD: Makefile,v 1.7 2012/04/07 14:28:57 sthen Exp $

COMMENT =	use Moose or Mouse modules

MODULES =	cpan
DISTNAME =	Any-Moose-0.18
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		devel/p5-Mouse>=0.40

REGRESS_DEPENDS =	devel/p5-Moose \
			devel/p5-MooseX-Types

.include <bsd.port.mk>
