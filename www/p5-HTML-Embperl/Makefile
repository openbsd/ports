# $OpenBSD: Makefile,v 1.7 2001/09/07 22:46:15 peter Exp $

COMMENT=	"embperl allows you to embed perl in your HTML documents"

VERSION=	1.3.3
DISTNAME=	HTML-Embperl-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.448
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= HTML

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl
RUN_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	EPHTTPD="/usr/sbin/httpd" APACHE_SRC="/usr/lib/apache"

.include <bsd.port.mk>
