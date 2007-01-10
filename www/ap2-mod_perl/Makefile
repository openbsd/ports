# $OpenBSD: Makefile,v 1.2 2007/01/10 14:22:00 dlg Exp $

NOT_FOR_ARCHS=  ${NO_SHARED_ARCHS}

COMMENT=        "module that embeds a Perl interpreter into Apache2"

DISTNAME=	mod_perl-2.0.3p0
PKGNAME=	ap2-${DISTNAME}
CATEGORIES=	www net

WANTLIB=        c m perl util

MASTER_SITES=   http://perl.apache.org/dist/ \
                ${MASTER_SITE_PERL_CPAN:=Apache/}

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# Apache Software License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

NO_REGRESS=		Yes

CONFIGURE_STYLE=        perl
CONFIGURE_ARGS+=        MP_APXS=/usr/local/sbin/apxs2
BUILD_DEPENDS=          ::www/apache-httpd
RUN_DEPENDS=            ${BUILD_DEPENDS}

.include <bsd.port.mk>
