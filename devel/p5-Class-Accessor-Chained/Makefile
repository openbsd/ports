# $OpenBSD: Makefile,v 1.1.1.1 2006/05/11 11:43:59 msf Exp $

COMMENT=		"make chained accessors"

DISTNAME=		Class-Accessor-Chained-0.01
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Class/}

BUILD_DEPENDS=		::devel/p5-Class-Accessor
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE= 	perl

PKG_ARCH= *

.include <bsd.port.mk>
