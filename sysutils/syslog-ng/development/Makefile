# $OpenBSD: Makefile,v 1.2 2002/10/10 17:28:21 jakob Exp $

DISTNAME=	syslog-ng-1.5.21
LIBOL=		libol-0.3.3

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SYSLOGNG:=syslog-ng/1.5/}
MASTER_SITES0=	${MASTER_SITE_SYSLOGNG:=libol/0.3/}

CONFIGURE_ARGS+=	--enable-tcp-wrapper

.include <bsd.port.mk>
