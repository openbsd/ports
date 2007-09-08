# $OpenBSD: Makefile,v 1.1.1.1 2007/09/08 01:26:44 msf Exp $

COMMENT=		"validate and convert data types"

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
