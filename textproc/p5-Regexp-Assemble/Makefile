# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:48 sthen Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Regexp-Assemble-0.35
CATEGORIES =	textproc
REVISION =	1

# Perl
PERMIT_PACKAGE =		Yes

MAKE_ENV +=	TEST_POD=1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
