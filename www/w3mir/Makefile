# $OpenBSD: Makefile,v 1.1.1.1 2000/11/30 15:44:32 avsm Exp $

DISTNAME=		w3mir-1.0.9
CATEGORIES=     	www
NEED_VERSION=		1.340

HOMEPAGE=		http://langfeldt.net/w3mir/
MAINTAINER=		Jeff Bachtel <jeff@cepheid.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

PERL_MODULES=   ${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ${PERL_MODULES}/URI.pm::www/p5-URI \
		${PERL_MODULES}/LWP.pm::www/p5-libwww \
		${PERL_MODULES}/${ARCH}-openbsd/MIME/Base64.pm::converters/p5-MIME-Base64
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
