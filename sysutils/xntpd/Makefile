# $OpenBSD: Makefile,v 1.9 1999/12/12 21:18:05 brad Exp $

DISTNAME=	xntp3-5.93e-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.hawaii.edu/mirrors/ntp/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ \
		ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org

HAS_CONFIGURE=	yes
CONFIGURE_SCRIPT= configure
CONFIGURE_ARGS+=--enable-accurate-adjtime --disable-IRIG \
		--bindir="/usr/local/sbin"

post-install:
	@mkdir -p ${PREFIX}/share/doc/ntp
	@ln -sf xntpd ${PREFIX}/sbin/ntpd
	@(cd ${WRKSRC}/html; tar cf - . | (cd ${PREFIX}/share/doc/ntp; tar xfBp -))
	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
