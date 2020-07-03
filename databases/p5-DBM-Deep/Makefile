# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:37 sthen Exp $

COMMENT=	perl multi-level hash/array DBM that supports transactions

DISTNAME =	DBM-Deep-2.0016
REVISION =	0

CATEGORIES=	databases

# Perl
PERMIT_PACKAGE =		Yes

MODULES=	cpan
PKG_ARCH=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Warn
TEST_DEPENDS=	devel/p5-Test-Exception

MAKE_ENV=	LONG_TESTS=Yes \
		TEST_POD=Yes

.include <bsd.port.mk>
