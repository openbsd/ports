# $OpenBSD: Makefile,v 1.6 2011/04/14 07:01:06 jasper Exp $

COMMENT =	fine grained cloning support for Moose objects

MODULES =	cpan
DISTNAME =	MooseX-Clone-0.05
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		devel/p5-Data-Visitor>=0.24 \
			devel/p5-Hash-Util-FieldHash-Compat \
			devel/p5-Moose>=0.74 \
			devel/p5-namespace-clean
BUILD_DEPENDS =		${RUN_DEPENDS}

REGRESS_DEPENDS =	devel/p5-Test-use-ok

.include <bsd.port.mk>
