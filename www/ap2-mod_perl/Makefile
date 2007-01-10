# $OpenBSD: Makefile,v 1.5 2007/01/10 15:09:13 bernd Exp $

COMMENT=	"module that embeds a Perl interpreter into Apache2"

DISTNAME=	mod_perl-2.0.3
PKGNAME=	ap2-${DISTNAME}p2
CATEGORIES=	www net

WANTLIB=	c m perl util apr-1 aprutil-1 db expat
MODULES=	converters/libiconv

MASTER_SITES=	http://perl.apache.org/dist/ \
		${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes
SHARED_ONLY=		Yes

CONFIGURE_STYLE=	perl
CONFIGURE_ARGS+=	MP_APXS=${LOCALBASE}/sbin/apxs2
RUN_DEPENDS=		::www/apache-httpd
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
