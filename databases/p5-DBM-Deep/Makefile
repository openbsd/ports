# $OpenBSD: Makefile,v 1.10 2015/08/13 15:40:59 benoit Exp $

COMMENT=	perl multi-level hash/array DBM that supports transactions

DISTNAME =	DBM-Deep-2.0012

CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Warn

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
