# $OpenBSD: Makefile,v 1.5 2010/11/19 07:23:09 espie Exp $

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
USE_GROFF =		Yes

RUN_DEPENDS=            security/p5-Crypt-SSLeay \
                        www/p5-libwww
BUILD_DEPENDS=          ${RUN_DEPENDS}

.include <bsd.port.mk>
