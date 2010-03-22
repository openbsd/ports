# $OpenBSD: Makefile,v 1.30 2010/03/22 10:32:49 sthen Exp $

COMMENT=	library for WWW access in Perl

MODULES=	cpan
DISTNAME=	libwww-perl-5.834
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=LWP/}

RUN_DEPENDS=	:p5-URI->1.10:www/p5-URI \
		:p5-HTML-Parser->=3.33:www/p5-HTML-Parser \
		::www/p5-HTML-Tagset \
		:p5-Crypt-SSLeay-*|p5-IO-Socket-SSL-*:security/p5-Crypt-SSLeay \
		:p5-HTTP-GHTTP-*:www/p5-HTTP-GHTTP
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
