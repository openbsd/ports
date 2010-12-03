# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT =	execute code after a scope finished compilation

MODULES =	cpan
DISTNAME =	B-Hooks-EndOfScope-0.08
REVISION =	0
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Sub-Exporter \
		devel/p5-Variable-Magic>=0.34

.include <bsd.port.mk>
