# $OpenBSD: Makefile,v 1.35 2016/03/20 19:57:17 naddy Exp $

COMMENT=	embperl allows you to embed perl in your HTML documents

MODULES=	cpan converters/libiconv
DISTNAME=	Embperl-2.3.0
PKGNAME=	p5-HTML-${DISTNAME}
REVISION=	8
CATEGORIES=	www

# Perl or GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m perl xml2>=10 xslt>=3 z

HOMEPAGE=	http://www.embperl.org/embperl/
MASTER_SITES=	http://www.embperl.org/downloads/
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
