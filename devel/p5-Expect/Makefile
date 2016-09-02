# $OpenBSD: Makefile,v 1.15 2016/09/02 22:37:23 ajacoutot Exp $

COMMENT =		talk to other applications

V =			1.33
MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Expect-${V}
CATEGORIES =		devel

WRKDIST =		${WRKDIR}/expect.pm-Expect-${V}/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-IO-Tty
MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
