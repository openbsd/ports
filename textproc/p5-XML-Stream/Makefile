# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:54 sthen Exp $

COMMENT=		creates and XML Stream connection and parses return data

DISTNAME=		XML-Stream-1.24
CATEGORIES=		textproc
REVISION=		0

MODULES=		cpan
PKG_ARCH=		*

# LGPLv2+
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		security/p5-Authen-SASL \
			security/p5-IO-Socket-SSL

.include <bsd.port.mk>
