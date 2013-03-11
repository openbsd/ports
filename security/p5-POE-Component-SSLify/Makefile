# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:27 espie Exp $

COMMENT=		make use of SSL with POE

MODULES=		cpan
DISTNAME=		POE-Component-SSLify-0.15
REVISION=		1
CATEGORIES=		net security
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-POE \
			security/p5-Net_SSLeay

.include <bsd.port.mk>
