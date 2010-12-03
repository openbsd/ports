# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=		concise expressive creations of Class::Meta classes

MODULES=		cpan
DISTNAME=		Class-Meta-Express-0.04
REVISION=		1
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Meta

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
