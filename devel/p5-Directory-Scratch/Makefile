# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:16 espie Exp $

COMMENT =	easy-to-use self-cleaning scratch space

MODULES =	cpan
DISTNAME =	Directory-Scratch-0.14
REVISION =	1
CATEGORIES =	devel
USE_GROFF =	Yes

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Slurp \
		devel/p5-Path-Class \
		textproc/p5-String-Random
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
