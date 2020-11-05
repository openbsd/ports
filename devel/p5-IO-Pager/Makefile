# $OpenBSD: Makefile,v 1.23 2020/11/05 11:17:57 sthen Exp $

COMMENT =	select a pager if destination is a TTY

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	IO-Pager-2.10
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.tgz

CPAN_AUTHOR =		JPIERCE
TEST_ENV =		TERM=vt220

.include <bsd.port.mk>
