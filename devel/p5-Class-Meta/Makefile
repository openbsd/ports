# $OpenBSD: Makefile,v 1.3 2010/09/15 13:52:11 sthen Exp $

COMMENT=		class automation, introspection and validation

MODULES=		cpan
DISTNAME=		Class-Meta-0.53
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Data-Types

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
