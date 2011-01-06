# $OpenBSD: Makefile,v 1.2 2011/01/06 08:46:16 jasper Exp $

COMMENT =		superdaemon for hot-deploying server programs

MODULES =		cpan
DISTNAME =		Server-Starter-0.09
REVISION =		0
CATEGORIES =		net
MAINTAINER =		Abel Abraham Camarillo Ojeda <acamari@verlet.org>

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-List-MoreUtils \
			devel/p5-Scope-Guard \
			net/p5-Test-TCP>=0.11 \
			sysutils/p5-Proc-Wait3

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
