# OpenBSD makefile for:	xntpd
# Version required:	5.93-export
# Date created:	18 Nov 1997
# Whom:	mickey
#
# $OpenBSD: Makefile,v 1.6 1999/01/10 23:02:11 jason Exp $
#

DISTNAME=	xntp3-5.93e-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org
NOMAN=		noman

HAS_CONFIGURE=	Yes
CONFIGURE_SCRIPT=	configure
CONFIGURE_ARGS+=	--enable-accurate-adjtime --disable-IRIG --bindir=/usr/local/sbin

post-install:
	@${LN} -sf xntpd ${PREFIX}/sbin/ntpd
	@${MKDIR} ${PREFIX}/share/doc/ntp
	@(cd ${WRKSRC}/html; tar cf - . | (cd ${PREFIX}/share/doc/ntp; tar xfBp -))
	@echo "**** html documentation installed in ${PREFIX}/share/doc/ntp"

.include <bsd.port.mk>
