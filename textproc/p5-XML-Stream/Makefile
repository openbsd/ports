# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:12 naddy Exp $

COMMENT=		creates and XML Stream connection and parses return data

DISTNAME=		XML-Stream-1.24
CATEGORIES=		textproc

MODULES=		cpan
PKG_ARCH=		*

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		security/p5-Authen-SASL \
			security/p5-IO-Socket-SSL

.include <bsd.port.mk>
