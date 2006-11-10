# $OpenBSD: Makefile,v 1.5 2006/11/10 18:50:47 jasper Exp $

COMMENT=		"POE-based parser for the IRC protocol"

DISTNAME=		POE-Filter-IRCD-2.2
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		net perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=POE/}

BUILD_DEPENDS=		::devel/p5-Module-Install \
			::devel/p5-POE
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
