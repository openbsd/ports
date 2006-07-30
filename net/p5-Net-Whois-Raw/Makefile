# $OpenBSD: Makefile,v 1.8 2006/07/30 12:52:23 jasper Exp $

COMMENT=	"perl extension for unparsed raw whois information"

DISTNAME=	Net-Whois-Raw-1.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
