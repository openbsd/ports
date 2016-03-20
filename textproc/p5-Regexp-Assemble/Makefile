# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:07 naddy Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Regexp-Assemble-0.35
CATEGORIES =	textproc
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MAKE_ENV +=	TEST_POD=1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
