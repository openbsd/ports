# $OpenBSD: Makefile,v 1.16 2010/10/19 08:02:53 espie Exp $

COMMENT=	module that embeds a Perl interpreter into Apache2

DISTNAME=	mod_perl-2.0.4
PKGNAME=	ap2-${DISTNAME}
REVISION=	3
CATEGORIES=	www net

WANTLIB=	c m perl util db expat
MODULES=	cpan converters/libiconv
MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SHARED_ONLY=		Yes

CONFIGURE_ARGS+=	MP_APXS=${LOCALBASE}/sbin/apxs2
USE_GROFF =	Yes
LIB_DEPENDS=		apr-1::devel/apr \
			aprutil-1::devel/apr-util
RUN_DEPENDS=		::www/apache-httpd
BUILD_DEPENDS=		${RUN_DEPENDS} \
			:p5-Apache-Test->=1.29:www/p5-Apache-Test

PORTHOME=		${WRKDIR}

# avoid conflicts
post-extract:
	@rm -rf ${WRKSRC}/Apache-Test

.include <bsd.port.mk>
