# $OpenBSD: Makefile,v 1.14 2000/07/01 17:14:31 brad Exp $

DISTNAME=	xntp3-5.93e-export
CATEGORIES=	sysutils
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.hawaii.edu/mirrors/ntp/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ \
		ftp://ftp.udel.edu/pub/ntp/

HOMEPAGE=	http://www.eecis.udel.edu/~mills/ntp/html/

MAINTAINER=     jason@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-accurate-adjtime --disable-IRIG \
		--bindir="${PREFIX}/sbin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@ln -sf xntpd ${PREFIX}/sbin/ntpd
	@cd ${WRKSRC}/html; tar cf - . | (cd ${PREFIX}/share/doc/ntp; tar xfBp -)

.include <bsd.port.mk>
