# $OpenBSD: Makefile,v 1.6 2001/05/10 19:20:53 naddy Exp $

COMMENT=	"embperl allows you to embed perl in your HTML documents"

DISTNAME=	HTML-Embperl-1.3.1
PKGNAME=	p5-HTML-Embperl-1.3.1
CATEGORIES=	www perl5
NEED_VERSION=	1.407
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

MAINTAINER=	Peter Galbavy <peter.galbavy@knowledge.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl
RUN_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	EPHTTPD="/usr/sbin/httpd" APACHE_SRC="/usr/lib/apache"

.include <bsd.port.mk>
