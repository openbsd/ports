# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:50 espie Exp $

COMMENT=		utility to mirror web pages

DISTNAME=		w3mir-1.0.10
CATEGORIES=     	www

HOMEPAGE=		http://langfeldt.net/w3mir/
MAINTAINER=		Jeff Bachtel <jeff@cepheid.org>

# Artistic license
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

.include <bsd.port.mk>
