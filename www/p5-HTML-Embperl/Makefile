# $OpenBSD: Makefile,v 1.24 2010/11/11 12:35:14 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	embperl allows you to embed perl in your HTML documents

MODULES=	cpan converters/libiconv
DISTNAME=	Embperl-2.3.0
PKGNAME=	p5-HTML-${DISTNAME}
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.dev.ecos.de/pub/perl/embperl/
RUN_DEPENDS=	:mod_perl->=1.22:www/mod_perl
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	::textproc/libxml \
		::textproc/libxslt
WANTLIB=	m xml2.>=10 xslt.>=3 z

CONFIGURE_ENV=	EPHTTPD="/usr/sbin/httpd" \
		APACHE_SRC="/usr/lib/apache" \
		XALANPATH="."

pre-build:
	@cd ${WRKSRC}/xs && make

.include <bsd.port.mk>
