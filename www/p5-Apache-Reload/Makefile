# $OpenBSD: Makefile,v 1.7 2013/03/11 11:44:44 espie Exp $

COMMENT =	Reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.11
CATEGORIES =	www perl5

MODULES =	cpan

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/mod_perl

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

# regress tests require to run as non-root user,
# needs p5-Apache-Test chroot fix to work as root
NO_TEST =		Yes

.include <bsd.port.mk>
