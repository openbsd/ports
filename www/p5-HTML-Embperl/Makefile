# $OpenBSD: Makefile,v 1.10 2002/05/15 17:58:50 espie Exp $

COMMENT=	"embperl allows you to embed perl in your HTML documents"

VERSION=	1.3.3
DISTNAME=	HTML-Embperl-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	::www/mod_perl
RUN_DEPENDS=	::www/mod_perl

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	EPHTTPD="/usr/sbin/httpd" APACHE_SRC="/usr/lib/apache"

.include <bsd.port.mk>
