# $OpenBSD: Makefile,v 1.8 2013/04/23 16:47:01 sthen Exp $

COMMENT =	Reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.11
REVISION =	0
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
