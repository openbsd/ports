# $OpenBSD: Makefile,v 1.10 2000/02/12 06:30:04 turan Exp $

DISTNAME=	xntp3-5.93e-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.hawaii.edu/mirrors/ntp/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ \
		ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

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
