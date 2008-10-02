# $OpenBSD: Makefile,v 1.2 2008/10/02 20:42:37 simon Exp $

COMMENT=	apache HTTP server request library
SHARED_ONLY=	Yes

DISTNAME=	libapreq2-2.08
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/J/JO/JOESUF/}
MODULES=	converters/libiconv
SHARED_LIBS=	apreq2	9.0

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes
WANTLIB=	apr-1 aprutil-1 db expat

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-perl-glue \
		--with-apache2-apxs=${LOCALBASE}/sbin/apxs2

BUILD_DEPENDS=	::devel/p5-ExtUtils-XSBuilder
LIB_DEPENDS=	::www/ap2-mod_perl
REGRESS_DEPENDS=::www/p5-Apache-Test

post-regress:
	cd ${WRKSRC}/glue/perl && \
	    LD_LIBRARY_PATH="${WRKSRC}/library/.libs:${LOCALBASE}" ${MAKE} test

.include <bsd.port.mk>
