# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:11 naddy Exp $

COMMENT=	perl multi-level hash/array DBM that supports transactions

DISTNAME =	DBM-Deep-2.0013

CATEGORIES=	databases

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
PKG_ARCH=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Test-Deep \
		devel/p5-Test-Warn

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
