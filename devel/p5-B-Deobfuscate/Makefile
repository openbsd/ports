# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:39 sthen Exp $

COMMENT=	Perl module for use in de-obfuscating source code

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	B-Deobfuscate-0.20
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

MAKE_ENV+=	TEST_POD=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-B-Keywords \
		devel/p5-IPC-Run \
		devel/p5-YAML

.include <bsd.port.mk>
