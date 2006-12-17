# $OpenBSD: Makefile,v 1.4 2006/12/17 11:56:56 kili Exp $

COMMENT=		"pragma to use the C3 method resolution order algorithm"

MODULES=		cpan
DISTNAME=		Class-C3-0.14
CATEGORIES=		devel

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Algorithm-C3->=0.05:devel/p5-Algorithm-C3 \
			::devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Sub-Name

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
