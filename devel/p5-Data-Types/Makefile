# $OpenBSD: Makefile,v 1.7 2011/06/01 17:41:49 jasper Exp $

COMMENT=		validate and convert data types

MODULES=		cpan
DISTNAME=		Data-Types-0.08
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
