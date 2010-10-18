# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:53 espie Exp $

COMMENT=	simple OOP-ish interface to the Google SOAP API

MODULES=	cpan
DISTNAME=	Net-Google-1.0.1
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		:p5-SOAP-Lite-*:www/p5-SOAP-Lite
BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
