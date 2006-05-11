# $OpenBSD: Makefile,v 1.1.1.1 2006/05/11 14:52:40 bernd Exp $

COMMENT=	"perl implementation of RIPE whois"

DISTNAME=	Net-Whois-RIPE-1.23
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../by-authors/id/P/PA/PAULG/}

CONFIGURE_STYLE=	perl modbuild
PKG_ARCH=		*

.include <bsd.port.mk>
