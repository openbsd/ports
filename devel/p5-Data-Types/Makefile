# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT=		validate and convert data types

MODULES=		cpan
DISTNAME=		Data-Types-0.06
REVISION=		1
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
