# $OpenBSD: Makefile,v 1.13 2000/03/06 17:16:33 espie Exp $

DISTNAME=	xntp3-5.93e-export
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.hawaii.edu/mirrors/ntp/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ \
		ftp://ftp.udel.edu/pub/ntp/

MAINTAINER=     jason@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GNU_CONFIGURE=	Yes
FAKE=Yes
CONFIGURE_ARGS+=--enable-accurate-adjtime --disable-IRIG \
		--bindir="/usr/local/sbin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@ln -sf xntpd ${PREFIX}/sbin/ntpd
	@(cd ${WRKSRC}/html; tar cf - . | (cd ${PREFIX}/share/doc/ntp; tar xfBp -))
#	@PKG_PREFIX="${PREFIX}" sh ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
