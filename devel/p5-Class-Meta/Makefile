# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:14 espie Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
DISTNAME=		Class-Meta-0.63
CATEGORIES=		devel
USE_GROFF=		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Data-Types \
			devel/p5-Class-ISA

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
