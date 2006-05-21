# $OpenBSD: Makefile,v 1.7 2006/05/21 13:55:43 steven Exp $

COMMENT=	"perl extension for unparsed raw whois information"

DISTNAME=	Net-Whois-Raw-1.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI \
		::www/p5-libwww

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
