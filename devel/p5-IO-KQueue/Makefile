# $OpenBSD: Makefile,v 1.20 2020/07/24 23:59:57 bluhm Exp $

COMMENT =	perl interface to the BSD kqueue system call

DISTNAME =	IO-KQueue-0.39

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan
BUILD_DEPENDS =		devel/p5-Devel-CheckLib

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
