# $OpenBSD: Makefile,v 1.6 2010/11/17 23:30:49 sthen Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
DISTNAME=		Class-Meta-0.53
REVISION=		1
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
