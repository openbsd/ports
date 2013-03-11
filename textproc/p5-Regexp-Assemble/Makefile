# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:43 espie Exp $

COMMENT =	assemble multiple Regular Expressions into a single RE

MODULES =	cpan
USE_GROFF =	Yes
DISTNAME =	Regexp-Assemble-0.35
CATEGORIES =	textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MAKE_ENV +=	TEST_POD=1

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
