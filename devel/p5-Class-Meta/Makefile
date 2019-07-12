# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:47 sthen Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Class-Meta-0.66
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Data-Types \
			devel/p5-Class-ISA

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
