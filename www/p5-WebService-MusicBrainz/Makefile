# $OpenBSD: Makefile,v 1.13 2018/08/29 21:26:17 bcallah Exp $

COMMENT=		interface to the MusicBrainz v2.0 API
DISTNAME=		WebService-MusicBrainz-1.0.4
CATEGORIES=		www

MAINTAINER=		Charlene Wendling <julianaito@posteo.jp>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		www/p5-Mojo>=7.13

CONFIGURE_STYLE=	modbuild

PKG_ARCH=		*

.include <bsd.port.mk>
