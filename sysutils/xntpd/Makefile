# $OpenBSD: Makefile,v 1.7 1999/03/12 22:55:34 brad Exp $

DISTNAME=	xntp3-5.93e-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.hawaii.edu/mirrors/ntp/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ \
		ftp://ftp.udel.edu/pub/ntp/

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
