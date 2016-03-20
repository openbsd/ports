# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:55 naddy Exp $

COMMENT =	ssh wrapper to execute remote interactive commands

DISTNAME =	Net-SSH-Expect-1.09
REVISION =	1
CATEGORIES =	net
MODULES =	cpan
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-Expect

.include <bsd.port.mk>
