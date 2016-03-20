# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:21 naddy Exp $

COMMENT =	easy-to-use self-cleaning scratch space

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Directory-Scratch-0.18
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-File-Slurp>=9999.12 \
		devel/p5-Path-Class \
		textproc/p5-String-Random \
		devel/p5-Path-Tiny
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
