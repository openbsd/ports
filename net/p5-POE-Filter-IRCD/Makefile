# $OpenBSD: Makefile,v 1.3 2006/09/27 10:45:55 steven Exp $

COMMENT=		"POE-based parser for the IRC protocol"

DISTNAME=		POE-Filter-IRCD-1.8
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		net perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=POE/}

BUILD_DEPENDS=		::devel/p5-POE
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
