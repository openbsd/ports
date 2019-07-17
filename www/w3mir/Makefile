# $OpenBSD: Makefile,v 1.16 2019/07/17 14:39:44 danj Exp $

COMMENT=		utility to mirror web pages

DISTNAME=		w3mir-1.0.10
CATEGORIES=     	www
REVISION=		0

HOMEPAGE=		http://langfeldt.net/w3mir/
# Artistic license
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
