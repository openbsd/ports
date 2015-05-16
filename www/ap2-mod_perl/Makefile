# $OpenBSD: Makefile,v 1.29 2015/05/16 10:42:52 sthen Exp $

COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.9-rc1
PKGNAME=	ap2-${DISTNAME:S/-rc/rc/}
CATEGORIES=	www net

MODULES=	cpan converters/libiconv
MASTER_SITES=	http://distfiles.nl/ \
		${MASTER_SITE_APACHE:=perl/}

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += apr-1 aprutil-1 c db expat m perl pthread util

SHARED_ONLY=		Yes

CONFIGURE_ARGS+=	MP_APXS=${LOCALBASE}/sbin/apxs2 \
			MP_NO_THREADS=1
LIB_DEPENDS=		devel/apr \
			devel/apr-util
RUN_DEPENDS=		www/apache-httpd
BUILD_DEPENDS=		${RUN_DEPENDS} \
			www/p5-Apache-Test>=1.29 \
			www/p5-Apache-Reload

PORTHOME=		${WRKDIR}

# avoid conflicts
post-extract:
	rm -r ${WRKSRC}/Apache-Test ${WRKSRC}/Apache-Reload/lib/Apache

.include <bsd.port.mk>
