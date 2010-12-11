# $OpenBSD: Makefile,v 1.1.1.1 2010/12/11 09:51:31 landry Exp $

COMMENT =		interface between perl web frameworks and web servers

MODULES =		cpan
DISTNAME =		Plack-0.9956
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

BUILD_DEPENDS =		devel/p5-Devel-StackTrace>=1.23 \
			devel/p5-Devel-StackTrace-AsHTML>=0.09 \
			devel/p5-File-ShareDir>=1.00 \
			devel/p5-Hash-MultiValue>=0.05 \
			devel/p5-Test-Requires \
			devel/p5-Try-Tiny \
			net/p5-Test-TCP>=0.11 \
			sysutils/p5-Filesys-Notify-Simple \
			www/p5-HTTP-Body>=1.06 \
			www/p5-URI>=1.36

.include <bsd.port.mk>
