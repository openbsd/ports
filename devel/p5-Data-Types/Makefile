# $OpenBSD: Makefile,v 1.4 2010/10/18 17:47:58 espie Exp $

COMMENT=		validate and convert data types

MODULES=		cpan
DISTNAME=		Data-Types-0.06
REVISION=		0
CATEGORIES=		devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
