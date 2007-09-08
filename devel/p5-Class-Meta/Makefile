# $OpenBSD: Makefile,v 1.1.1.1 2007/09/08 01:27:42 msf Exp $

COMMENT=		"class automation, introspection and validation"

MODULES=		cpan
DISTNAME=		Class-Meta-0.53
CATEGORIES=		devel

MAINTAINER=		Mathieu Sauve-Frankel <msf@openbsd.org>

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
