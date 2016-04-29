# $OpenBSD: Makefile,v 1.36 2016/04/29 08:20:36 sthen Exp $

COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.9
REVISION=	0
PKGNAME=	ap2-${DISTNAME:S/-rc/rc/}
CATEGORIES=	www net

MODULES=	cpan converters/libiconv
MASTER_SITES=	https://distfiles.nl/ \
		${MASTER_SITE_APACHE:=perl/}

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += apr-1 aprutil-1 c db expat m perl pthread util

CONFIGURE_ARGS+=	MP_APXS=${LOCALBASE}/sbin/apxs2 \
			MP_NO_THREADS=1
LIB_DEPENDS=		devel/apr \
			devel/apr-util
RUN_DEPENDS=		www/apache-httpd
BUILD_DEPENDS=		${RUN_DEPENDS}

PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
