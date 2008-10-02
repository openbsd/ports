# $OpenBSD: Makefile,v 1.19 2008/10/02 20:42:37 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	embperl allows you to embed perl in your HTML documents

MODULES=	cpan
DISTNAME=	HTML-Embperl-1.3.3
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:mod_perl->=1.22:www/mod_perl
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ENV=	EPHTTPD="/usr/sbin/httpd" APACHE_SRC="/usr/lib/apache"

.include <bsd.port.mk>
