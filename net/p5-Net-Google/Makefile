# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:52 espie Exp $

COMMENT=	simple OOP-ish interface to the Google SOAP API

MODULES=	cpan
DISTNAME=	Net-Google-1.0.1
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		www/p5-SOAP-Lite
BUILD_DEPENDS=		${RUN_DEPENDS}

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
