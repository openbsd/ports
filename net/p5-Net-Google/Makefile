# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	simple OOP-ish interface to the Google SOAP API

MODULES=	cpan
DISTNAME=	Net-Google-1.0.1
REVISION=	0
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
