# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:54 espie Exp $

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

.include <bsd.port.mk>
