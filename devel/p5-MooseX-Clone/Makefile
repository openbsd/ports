# $OpenBSD: Makefile,v 1.1.1.1 2009/05/12 23:33:14 simon Exp $

COMMENT =	fine grained cloning support for Moose objects

MODULES =	cpan
DISTNAME =	MooseX-Clone-0.04
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		:p5-Data-Visitor->=0.24:devel/p5-Data-Visitor \
			::devel/p5-Hash-Util-FieldHash-Compat \
			:p5-Moose->=0.74:devel/p5-Moose \
			::devel/p5-namespace-clean
REGRESS_DEPENDS =	::devel/p5-Test-use-ok

.include <bsd.port.mk>
