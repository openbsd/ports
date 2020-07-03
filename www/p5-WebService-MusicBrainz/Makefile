# $OpenBSD: Makefile,v 1.16 2020/07/03 21:46:07 sthen Exp $

COMMENT=		interface to the MusicBrainz v2.0 API
DISTNAME=		WebService-MusicBrainz-1.0.5
CATEGORIES=		www
REVISION=		0

MAINTAINER=		Charlene Wendling <cwen@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan

RUN_DEPENDS=		www/p5-Mojo>=7.13

CONFIGURE_STYLE=	modbuild

PKG_ARCH=		*

.include <bsd.port.mk>
