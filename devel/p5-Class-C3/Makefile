# $OpenBSD: Makefile,v 1.1.1.1 2006/05/11 11:39:51 msf Exp $

COMMENT=		"pragma to use the C3 method resolution order algortihm"

DISTNAME=		Class-C3-0.11
PKGNAME=		p5-${DISTNAME}
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
