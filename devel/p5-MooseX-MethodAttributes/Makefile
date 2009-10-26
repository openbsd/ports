# $OpenBSD: Makefile,v 1.2 2009/10/26 16:51:13 jim Exp $

COMMENT =	code attribute introspection

MODULES =	cpan
DISTNAME =	MooseX-MethodAttributes-0.18
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Moose \
		::devel/p5-MooseX-Types \
		::devel/p5-Test-Exception \
		::devel/p5-namespace-autoclean \
		::devel/p5-namespace-clean

.include <bsd.port.mk>
