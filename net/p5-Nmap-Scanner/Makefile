# $OpenBSD: Makefile,v 1.3 2007/04/12 18:59:36 jasper Exp $

COMMENT=	"perform and manipulate nmap scans using Perl"

MODULES=	cpan
DISTNAME=	Nmap-Scanner-0.9
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::textproc/p5-XML-SAX \
		::www/p5-HTML-Parser \
		::net/nmap

.include <bsd.port.mk>	
