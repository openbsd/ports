# $OpenBSD: Makefile,v 1.18 2000/10/26 18:06:04 fgsch Exp $

DISTNAME=	xntp3-5.93e-export
PKGNAME=	xntp3-5.93e
CATEGORIES=	sysutils
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ntp3/ \
		ftp://ftp.udel.edu/pub/ntp/ntp3/

HOMEPAGE=	http://www.eecis.udel.edu/~mills/ntp/html/

MAINTAINER=     Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-accurate-adjtime --disable-IRIG \
		--bindir="${PREFIX}/sbin"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xntpd
	@cd ${PREFIX}/sbin && ln -sf xntpd ntpd
	@cd ${WRKSRC}/html; tar cf - . | (cd ${PREFIX}/share/doc/xntpd; tar xfBp -)

.include <bsd.port.mk>
