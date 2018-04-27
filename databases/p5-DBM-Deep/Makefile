# $OpenBSD: Makefile,v 1.13 2018/04/27 14:52:53 ajacoutot Exp $

COMMENT=	perl multi-level hash/array DBM that supports transactions

DISTNAME =	DBM-Deep-2.0014

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
