# $OpenBSD: Makefile,v 1.5 1999/03/26 08:48:27 marc Exp $

DISTNAME=		nmh-1.0
CATEGORIES=     	mail

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ftp.math.gatech.edu/pub/nmh/

SYSCONFDIR=		${PREFIX}/lib/nmh
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}

.include <bsd.port.mk>
