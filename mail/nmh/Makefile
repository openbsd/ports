# $OpenBSD: Makefile,v 1.4 1999/03/17 00:52:47 brad Exp $

DISTNAME=		nmh-0.27
CATEGORIES=     	mail

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ftp.math.gatech.edu/pub/nmh/

SYSCONFDIR=		${PREFIX}/lib/nmh
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--libdir=${PREFIX}/libexec \
			--sysconfdir=${SYSCONFDIR}

.include <bsd.port.mk>
