# $OpenBSD: Makefile,v 1.1.1.1 1999/12/08 19:43:46 jason Exp $

DISTNAME=	flwm-0.25
PKGNAME=	flwm-0.25
CATEGORIES=	x11
MASTER_SITES=	http://www.cinenet.net/users/spitzak/flwm/
MAINTAINER=	jason@OpenBSD.ORG

EXTRACT_SUFX=	.tgz
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=--includedir=/usr/local/include --libdir=/usr/local/lib
NO_SHARED_LIBS=	yes
LIB_DEPENDS=	fltk:${PORTSDIR}/x11/fltk

.include <bsd.port.mk>
