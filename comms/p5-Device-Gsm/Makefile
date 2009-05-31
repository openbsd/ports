# $OpenBSD: Makefile,v 1.4 2009/05/31 16:25:29 fkr Exp $

COMMENT=	Perl extension to interface GSM cellulars / modems

DISTNAME=	Device-Gsm-1.52
CATEGORIES=	comms

MODULES=	cpan
MAINTAINER=	Matteo Cantoni <goony@openbeer.it>  

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
