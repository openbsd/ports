# $OpenBSD: Makefile,v 1.14 2019/05/02 20:18:29 cwen Exp $

COMMENT=		interface to the MusicBrainz v2.0 API
DISTNAME=		WebService-MusicBrainz-1.0.5
CATEGORIES=		www

MAINTAINER=		Charlene Wendling <cwen@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

RUN_DEPENDS=		www/p5-Mojo>=7.13

CONFIGURE_STYLE=	modbuild

PKG_ARCH=		*

.include <bsd.port.mk>
