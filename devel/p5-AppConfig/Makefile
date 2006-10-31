# $OpenBSD: Makefile,v 1.5 2006/10/31 19:22:20 jasper Exp $

COMMENT=	"Module bundle for reading and parsing config files"

DISTNAME=	AppConfig-1.63
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=AppConfig/}

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	perl

RUN_DEPENDS=		::devel/p5-File-HomeDir
BUILD_DEPENDS=		${RUN_DEPENDS}

PKG_ARCH=	*

.include <bsd.port.mk>
