# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:33 sthen Exp $

COMMENT=	simple OOP-ish interface to the Google SOAP API

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Google-1.0.1
REVISION=	2
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		www/p5-SOAP-Lite
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
