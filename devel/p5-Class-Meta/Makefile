# $OpenBSD: Makefile,v 1.8 2011/06/01 17:41:51 jasper Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
DISTNAME=		Class-Meta-0.63
CATEGORIES=		devel
USE_GROFF=		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Data-Types \
			devel/p5-Class-ISA

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
