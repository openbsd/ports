# $OpenBSD: Makefile,v 1.1.1.1 2009/02/02 00:58:02 simon Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
DISTNAME =	B-Hooks-EndOfScope-0.06
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Sub-Exporter \
		::devel/p5-Variable-Magic

.include <bsd.port.mk>
