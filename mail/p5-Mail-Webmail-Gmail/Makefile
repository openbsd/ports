# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:35 sthen Exp $

COMMENT=		interface to Google webmail service

DISTNAME=		Mail-Webmail-Gmail-1.09
REVISION=		2
CATEGORIES=		mail

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=            security/p5-Crypt-SSLeay \
                        www/p5-libwww
BUILD_DEPENDS=          ${RUN_DEPENDS}

.include <bsd.port.mk>
