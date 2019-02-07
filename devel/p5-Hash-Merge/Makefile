# $OpenBSD: Makefile,v 1.14 2019/02/07 18:30:15 cwen Exp $

COMMENT =	merges arbitrarily deep hashes into a single hash

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Hash-Merge-0.300
CATEGORIES =	devel

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Clone>=0 \
		devel/p5-Clone-Choose

.include <bsd.port.mk>
