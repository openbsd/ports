# OpenBSD makefile for:	xntpd
# Version required:	4.0.72
# Date created:	18 Nov 1997
# Whom:	mickey
#
# $OpenBSD: Makefile,v 1.3 1998/02/22 22:49:39 jason Exp $
#

DISTNAME=	ntp-4.0.72-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org
NOMAN=		noman

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT=	configure
CONFIGURE_ARGS+=	--enable-accurate-adjtime --disable-IRIG --bindir=/usr/local/sbin

.include <bsd.port.mk>
