# $OpenBSD: Makefile,v 1.3 2010/09/15 13:52:11 sthen Exp $

COMMENT=		concise expressive creations of Class::Meta classes

MODULES=		cpan
DISTNAME=		Class-Meta-Express-0.04
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/p5-Class-Meta

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
