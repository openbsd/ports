# OpenBSD makefile for:	xntpd
# Version required:	3.5.91
# Date created:	18 Nov 1997
# Whom:	mickey
#
# $OpenBSD: Makefile,v 1.2 1998/01/16 04:15:39 jason Exp $
#

DISTNAME=	ntp-4.0.71-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org
NOMAN=		noman

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT=	configure
CONFIGURE_ARGS+=	--enable-accurate-adjtime --bindir=/usr/local/sbin

.include <bsd.port.mk>
