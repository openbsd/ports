# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
DISTNAME=		Class-Meta-0.53
REVISION=		2
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
