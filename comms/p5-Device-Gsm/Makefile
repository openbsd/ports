# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:22 ajacoutot Exp $

COMMENT=	Perl extension to interface GSM cellulars / modems

DISTNAME=	Device-Gsm-1.52
REVISION=	0
CATEGORIES=	comms

MODULES=	cpan
MAINTAINER=	Matteo Cantoni <goony@openbeer.it>  

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GROFF =	Yes
RUN_DEPENDS=	comms/p5-Device-Modem
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
