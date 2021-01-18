# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:19:36 robert Exp $

COMMENT =	extension to get pid info from /bin/ps

DISTNAME =	Unix-Process-1.3101
CATEGORIES =	sysutils

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-IPC-System-Simple

.include <bsd.port.mk>
