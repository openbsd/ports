# $OpenBSD: Makefile,v 1.2 2006/06/24 11:08:01 espie Exp $

COMMENT=		"pragma to use the C3 method resolution order algorithm"

DISTNAME=		Class-C3-0.11
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel perl5

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Class/}

BUILD_DEPENDS=		::devel/p5-Algorithm-C3 \
			::devel/p5-Test-Exception
RUN_DEPENDS=		${BUILD_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Sub-Name

CONFIGURE_STYLE= 	perl

PKG_ARCH= *

.include <bsd.port.mk>
