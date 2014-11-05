# $OpenBSD: Makefile,v 1.26 2014/11/05 11:43:59 sthen Exp $

COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.8
PKGNAME=	ap2-${DISTNAME}
CATEGORIES=	www net
REVISION=	1

MODULES=	cpan converters/libiconv
MASTER_SITES=	${MASTER_SITE_APACHE:=perl/}

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += apr-1 aprutil-1 c db expat m perl pthread util

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
	rm -r ${WRKSRC}/Apache-Test ${WRKSRC}/Apache-Reload/lib/Apache

.include <bsd.port.mk>
