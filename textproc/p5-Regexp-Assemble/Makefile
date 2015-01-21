# $OpenBSD: Makefile,v 1.6 2015/01/21 14:41:37 sthen Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
DISTNAME =	Regexp-Assemble-0.35
CATEGORIES =	textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MAKE_ENV +=	TEST_POD=1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
