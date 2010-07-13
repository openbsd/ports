# $OpenBSD: Makefile,v 1.3 2010/07/13 20:14:21 sthen Exp $

COMMENT=		interface to Google webmail service

DISTNAME=		Mail-Webmail-Gmail-1.09
REVISION=		0
CATEGORIES=		mail

MAINTAINER=		Gleydson Soares <gsoares@trusted.com.br>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=            :p5-Crypt-SSLeay-*:security/p5-Crypt-SSLeay \
                        :p5-libwww-*:www/p5-libwww
BUILD_DEPENDS=          ${RUN_DEPENDS}

.include <bsd.port.mk>
