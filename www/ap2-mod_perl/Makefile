# $OpenBSD: Makefile,v 1.22 2013/03/22 21:49:43 sthen Exp $

COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.7
PKGNAME=	ap2-${DISTNAME}
CATEGORIES=	www net

WANTLIB=	c m perl util db expat apr-1 aprutil-1
MODULES=	cpan converters/libiconv
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

SHARED_ONLY=		Yes

CONFIGURE_ARGS+=	MP_APXS=${LOCALBASE}/sbin/apxs2
LIB_DEPENDS=		devel/apr \
			devel/apr-util
RUN_DEPENDS=		www/apache-httpd
BUILD_DEPENDS=		${RUN_DEPENDS} \
			www/p5-Apache-Test>=1.29

PORTHOME=		${WRKDIR}

# avoid conflicts
post-extract:
	@rm -rf ${WRKSRC}/Apache-Test

.include <bsd.port.mk>
