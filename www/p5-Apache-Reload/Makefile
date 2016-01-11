# $OpenBSD: Makefile,v 1.11 2016/01/11 12:49:28 jasper Exp $

COMMENT =	reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.13
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
