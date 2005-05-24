# $OpenBSD: Makefile,v 1.1.1.1 2005/05/24 16:46:25 msf Exp $

COMMENT=	"DNS module for the Perl Object Environment"

DISTNAME=	POE-Component-Client-DNS-0.98
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=POE/} 

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-DNS

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
