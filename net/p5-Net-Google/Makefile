# $OpenBSD: Makefile,v 1.3 2010/11/19 22:31:36 espie Exp $

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

RUN_DEPENDS=		www/p5-SOAP-Lite
BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>
