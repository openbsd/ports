# $OpenBSD: Makefile,v 1.3 2002/12/30 10:48:53 jakob Exp $

DISTNAME=	syslog-ng-1.5.24
LIBOL=		libol-0.3.6

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SYSLOGNG:=syslog-ng/1.5/}
MASTER_SITES0=	${MASTER_SITE_SYSLOGNG:=libol/0.3/}

CONFIGURE_ARGS+=	--enable-tcp-wrapper

.include <bsd.port.mk>
