COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.13
PKGNAME=	ap2-${DISTNAME:S/-rc/rc/}
CATEGORIES=	www net

MODULES=	cpan
SITES=		${SITE_APACHE:=perl/}

# Apache Software License
PERMIT_PACKAGE=	Yes

WANTLIB += apr-1 aprutil-1 c db expat iconv m perl pthread util

CONFIGURE_ARGS+=	MP_APXS=${LOCALBASE}/sbin/apxs2 \
			MP_NO_THREADS=1
LIB_DEPENDS=		converters/libiconv \
			devel/apr \
			devel/apr-util
RUN_DEPENDS=		www/apache-httpd
BUILD_DEPENDS=		${RUN_DEPENDS}
USE_GMAKE=		Yes

PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
