# $OpenBSD: Makefile,v 1.15 2019/07/12 20:44:56 sthen Exp $

COMMENT =	merges arbitrarily deep hashes into a single hash

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Hash-Merge-0.300
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Clone>=0 \
		devel/p5-Clone-Choose

.include <bsd.port.mk>
