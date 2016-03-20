# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:53 naddy Exp $

COMMENT=	simple OOP-ish interface to the Google SOAP API

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-Google-1.0.1
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		www/p5-SOAP-Lite
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
