# OpenBSD makefile for:	xntpd
# Version required:	3.5.91
# Date created:	18 Nov 1997
# Whom:	mickey
#
# $OpenBSD: Makefile,v 1.1 1997/11/18 07:47:24 mickey Exp $
#

DISTNAME=	xntp3-5.90-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     mickey@openbsd.org
NOMAN=		noman

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT=	configure
CONFIGURE_ARGS+=	--enable-accurate-adjtime

.include <bsd.port.mk>
