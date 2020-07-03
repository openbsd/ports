# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:50 sthen Exp $

COMMENT =	easy-to-use self-cleaning scratch space

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Directory-Scratch-0.18
CATEGORIES =	devel
REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

RUN_DEPENDS =	devel/p5-File-Slurp>=9999.12 \
		devel/p5-Path-Class \
		textproc/p5-String-Random \
		devel/p5-Path-Tiny
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
