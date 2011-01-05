# $OpenBSD: Makefile,v 1.1.1.1 2011/01/05 14:12:42 jasper Exp $

COMMENT =		superdaemon for hot-deploying server programs

MODULES =		cpan
DISTNAME =		Server-Starter-0.09
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-List-MoreUtils \
			devel/p5-Scope-Guard \
			sysutils/p5-Proc-Wait3
REGRESS_DEPENDS =	net/p5-Test-TCP>=0.11

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
