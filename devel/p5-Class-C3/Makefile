# $OpenBSD: Makefile,v 1.8 2007/05/09 17:13:43 simon Exp $

COMMENT=		"pragma to use the C3 method resolution order algorithm"

MODULES=		cpan
DISTNAME=		Class-C3-0.16
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

CONFIGURE_ARGS=		--skipdeps

.include <bsd.port.mk>
