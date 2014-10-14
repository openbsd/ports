# $OpenBSD: Makefile,v 1.7 2014/10/14 21:46:44 bluhm Exp $

COMMENT =	easy-to-use self-cleaning scratch space

MODULES =	cpan
DISTNAME =	Directory-Scratch-0.15
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Slurp>=9999.12 \
		devel/p5-Path-Class \
		textproc/p5-String-Random
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
