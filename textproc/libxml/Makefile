# $OpenBSD: Makefile,v 1.1.1.1 1999/03/14 16:06:54 rohee Exp $

DISTNAME=		libxml-1.0.0
CATEGORIES=		textproc

NEED_VERSION=		1.78

MAINTAINER=             rohee@OpenBSD.ORG

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR=	gnome-1.0/sources

GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
