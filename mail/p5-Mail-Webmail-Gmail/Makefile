# $OpenBSD: Makefile,v 1.6 2010/12/03 11:45:39 ajacoutot Exp $

COMMENT=		interface to Google webmail service

DISTNAME=		Mail-Webmail-Gmail-1.09
REVISION=		1
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
