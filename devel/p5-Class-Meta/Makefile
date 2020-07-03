# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:43 sthen Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Class-Meta-0.66
CATEGORIES=		devel
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Data-Types \
			devel/p5-Class-ISA

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
