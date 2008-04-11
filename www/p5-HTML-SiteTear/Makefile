# $OpenBSD: Makefile,v 1.1.1.1 2008/04/11 22:48:48 simon Exp $

COMMENT=	make a separate copy of a web site in local file system

MODULES=	cpan
DISTNAME=	HTML-SiteTear-1.42
CATEGORIES=	www

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::www/p5-HTML-Copy \
		::www/p5-HTML-Parser \
		::www/p5-HTML-Tagset \
		::www/p5-URI \
		::www/p5-libwww

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
