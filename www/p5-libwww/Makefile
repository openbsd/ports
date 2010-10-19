# $OpenBSD: Makefile,v 1.33 2010/10/19 08:02:57 espie Exp $

COMMENT=	library for WWW access in Perl

MODULES=	cpan
DISTNAME=	libwww-perl-5.835
PKGNAME=	p5-${DISTNAME:S/-perl-/-/}
CATEGORIES=	www
USE_GROFF =	Yes

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
