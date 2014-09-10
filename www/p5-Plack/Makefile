# $OpenBSD: Makefile,v 1.6 2014/09/10 06:35:19 jasper Exp $

COMMENT =		interface between perl web frameworks and web servers

MODULES =		cpan
REVISION =		1
DISTNAME =		Plack-0.9980
CATEGORIES =		www
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Devel-StackTrace>=1.23 \
			devel/p5-Devel-StackTrace-AsHTML>=0.11 \
			devel/p5-File-ShareDir>=1.00 \
			devel/p5-Hash-MultiValue>=0.05 \
			devel/p5-Test-Requires \
			devel/p5-Try-Tiny \
			net/p5-Test-TCP>=0.11 \
			sysutils/p5-Filesys-Notify-Simple \
			www/p5-libwww>=5.814 \
			www/p5-libapreq \
			www/p5-HTTP-Body>=1.06 \
			www/p5-URI>=1.36

.include <bsd.port.mk>
