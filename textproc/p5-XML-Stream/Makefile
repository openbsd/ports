# $OpenBSD: Makefile,v 1.5 2011/04/01 07:08:04 jasper Exp $

COMMENT=		creates and XML Stream connection and parses return data

DISTNAME=		XML-Stream-1.23
CATEGORIES=		textproc

MODULES=		cpan
USE_GROFF =		Yes

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		security/p5-Authen-SASL \
			security/p5-IO-Socket-SSL

.include <bsd.port.mk>
