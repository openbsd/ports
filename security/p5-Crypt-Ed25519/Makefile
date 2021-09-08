# $OpenBSD: Makefile,v 1.1.1.1 2021/09/08 22:01:30 bluhm Exp $

COMMENT =	bare-bones Ed25519 public key signing/verification system

DISTNAME =	Crypt-Ed25519-1.05

CATEGORIES =	security

MAINTAINER =	Wen Heping <wenheping2000@hotmail.com>

# Perl, ed25519 license
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

BUILD_DEPENDS =		devel/p5-Canary-Stability

.include <bsd.port.mk>
