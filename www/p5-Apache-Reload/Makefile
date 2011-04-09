# $OpenBSD: Makefile,v 1.6 2011/04/09 14:30:13 simon Exp $

COMMENT =	Reload changed modules for mod_perl

DISTNAME =	Apache-Reload-0.11
CATEGORIES =	www perl5

MODULES =	cpan

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/mod_perl

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# regress tests require to run as non-root user,
# needs p5-Apache-Test chroot fix to work as root
NO_REGRESS =		Yes

.include <bsd.port.mk>
