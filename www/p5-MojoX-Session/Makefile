# $OpenBSD: Makefile,v 1.3 2010/11/22 08:36:51 espie Exp $

COMMENT =	session management for Mojo

MODULES =	cpan
DISTNAME =	MojoX-Session-0.10
CATEGORIES =	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	VTI

RUN_DEPENDS =	security/p5-Digest-SHA1 \
		www/p5-Mojo

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
