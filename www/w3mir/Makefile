# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:07 sthen Exp $

COMMENT=		utility to mirror web pages

DISTNAME=		w3mir-1.0.10
CATEGORIES=     	www

HOMEPAGE=		http://langfeldt.net/w3mir/
MAINTAINER=		Jeff Bachtel <jeff@cepheid.org>

# Artistic license
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
