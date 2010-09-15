# $OpenBSD: Makefile,v 1.3 2010/09/15 13:52:11 sthen Exp $

COMMENT=		validate and convert data types

MODULES=		cpan
DISTNAME=		Data-Types-0.06
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
