# $OpenBSD: Makefile,v 1.8 2002/11/27 06:49:42 pvalchev Exp $

COMMENT=		"utility to mirror web pages"

DISTNAME=		w3mir-1.0.10
CATEGORIES=     	www

HOMEPAGE=		http://langfeldt.net/w3mir/
MAINTAINER=		Jeff Bachtel <jeff@cepheid.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=  :p5-URI-*:www/p5-URI \
		:p5-libwww-*:www/p5-libwww
RUN_DEPENDS=    ${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
