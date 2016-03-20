# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:13 naddy Exp $

COMMENT=	Perl module for use in de-obfuscating source code

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	B-Deobfuscate-0.20
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	TEST_POD=Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-B-Keywords \
		devel/p5-IPC-Run \
		devel/p5-YAML

.include <bsd.port.mk>
