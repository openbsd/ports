# $OpenBSD: Makefile,v 1.6 2010/10/18 17:47:57 espie Exp $

COMMENT=		inside-out object scaffolding

MODULES=		cpan
DISTNAME=		Class-Std-0.0.9
CATEGORIES=		devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
