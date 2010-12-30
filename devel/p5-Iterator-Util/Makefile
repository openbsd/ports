# $OpenBSD: Makefile,v 1.1.1.1 2010/12/30 10:41:42 benoit Exp $

COMMENT =	essential utilities for the Iterator class.

DISTNAME =	Iterator-Util-0.02
CATEGORIES =	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Iterator
REGRESS_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
