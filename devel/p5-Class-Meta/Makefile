# $OpenBSD: Makefile,v 1.10 2014/12/08 19:41:32 benoit Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
DISTNAME =		Class-Meta-0.66
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Data-Types \
			devel/p5-Class-ISA

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
