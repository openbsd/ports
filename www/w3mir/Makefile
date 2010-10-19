# $OpenBSD: Makefile,v 1.11 2010/10/19 08:02:57 espie Exp $

COMMENT=		utility to mirror web pages

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

RUN_DEPENDS=	:p5-URI-*:www/p5-URI \
		:p5-libwww-*:www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

.include <bsd.port.mk>
