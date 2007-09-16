# $OpenBSD: Makefile,v 1.2 2007/09/16 02:53:04 merdely Exp $

COMMENT=		validate and convert data types

MODULES=		cpan
DISTNAME=		Data-Types-0.06
CATEGORIES=		devel

MAINTAINER=		Mathieu Sauve-Frankel <msf@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
