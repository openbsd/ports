# OpenBSD makefile for:	xntpd
# Version required:	4.0.72
# Date created:	18 Nov 1997
# Whom:	mickey
#
# $OpenBSD: Makefile,v 1.4 1998/02/27 02:33:23 marc Exp $
#

DISTNAME=	ntp-4.0.72-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org
NOMAN=		noman

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT=	configure
CONFIGURE_ARGS+=	--enable-accurate-adjtime --disable-IRIG --bindir=/usr/local/sbin

post-install:
	@${MKDIR} ${PREFIX}/share/doc/ntp
	@(cd ${WRKSRC}/html; tar cf - . | (cd ${PREFIX}/share/doc/ntp; tar xfBp -))
	@echo "**** html documentation installed in ${PREFIX}/share/doc/ntp"

.include <bsd.port.mk>
