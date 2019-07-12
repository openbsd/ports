# $OpenBSD: Makefile,v 1.45 2019/07/12 20:50:17 sthen Exp $

COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.10
PKGNAME=	ap2-${DISTNAME:S/-rc/rc/}
REVISION=	0
CATEGORIES=	www net

MODULES=	cpan
MASTER_SITES=	${MASTER_SITE_APACHE:=perl/}

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
