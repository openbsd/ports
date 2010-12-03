# $OpenBSD: Makefile,v 1.4 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT =	session management for Mojo

MODULES =	cpan
DISTNAME =	MojoX-Session-0.10
REVISION =	0
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
