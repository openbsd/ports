# $OpenBSD: Makefile,v 1.6 2002/06/07 21:37:12 wilfried Exp $

COMMENT=		"utility to mirror web pages"

DISTNAME=		w3mir-1.0.10
CATEGORIES=     	www
NEED_VERSION=		1.515

HOMEPAGE=		http://langfeldt.net/w3mir/
MAINTAINER=		Jeff Bachtel <jeff@cepheid.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=  ::www/p5-URI \
		::www/p5-libwww \
		::converters/p5-MIME-Base64
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
