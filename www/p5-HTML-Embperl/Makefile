# $OpenBSD: Makefile,v 1.31 2014/03/13 21:22:20 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	embperl allows you to embed perl in your HTML documents

MODULES=	cpan converters/libiconv
DISTNAME=	Embperl-2.3.0
PKGNAME=	p5-HTML-${DISTNAME}
REVISION=	5
CATEGORIES=	www

# Perl or GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m xml2>=10 xslt>=3 z

MASTER_SITES=	ftp://ftp.dev.ecos.de/pub/perl/embperl/
RUN_DEPENDS=	www/mod_perl>=1.22 \
		www/apache-httpd-openbsd
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	textproc/libxml \
		textproc/libxslt

CONFIGURE_ENV=	EPHTTPD="${LOCALBASE}/sbin/httpd" \
		APACHE_SRC="${LOCALBASE}/lib/apache" \
		XALANPATH="."

pre-build:
	@cd ${WRKSRC}/xs && make

.include <bsd.port.mk>
