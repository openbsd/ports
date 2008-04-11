# $OpenBSD: Makefile,v 1.1.1.1 2008/04/11 22:48:41 simon Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
DISTNAME=	HTML-Copy-1.3
CATEGORIES=	www

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-HTML-Parser \
		::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
