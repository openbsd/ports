# $OpenBSD: Makefile,v 1.9 2015/01/21 06:23:33 bentley Exp $

COMMENT=	perl multi-level hash/array DBM that supports transactions

DISTNAME =	DBM-Deep-2.0011
REVISION =	0

CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Warn

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
