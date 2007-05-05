# $OpenBSD: Makefile,v 1.7 2007/05/05 09:28:00 espie Exp $

COMMENT=		"pragma to use the C3 method resolution order algorithm"

MODULES=		cpan
DISTNAME=		Class-C3-0.15_05
CATEGORIES=		devel
CPAN_AUTHOR=		BLBLACK

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-Algorithm-C3->=0.06:devel/p5-Algorithm-C3 \
			::devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Sub-Name

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
