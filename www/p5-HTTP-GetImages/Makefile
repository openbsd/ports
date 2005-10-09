# $OpenBSD: Makefile,v 1.1.1.1 2005/10/09 08:17:17 alek Exp $

COMMENT=		"spider to recover and store images from web pages"

DISTNAME=		HTTP-GetImages-0.343
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		www perl5

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=HTTP/}

RUN_DEPENDS=		::www/p5-libwww
REGRESS_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=	perl

PKG_ARCH=		*

.include <bsd.port.mk>
