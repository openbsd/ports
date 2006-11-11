# $OpenBSD: Makefile,v 1.6 2006/11/11 09:16:37 jasper Exp $

COMMENT=		"POE-based parser for the IRC protocol"

DISTNAME=		POE-Filter-IRCD-2.2
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		net perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=POE/}

RUN_DEPENDS=		::devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
