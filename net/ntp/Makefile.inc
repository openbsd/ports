# $OpenBSD: Makefile.inc,v 1.1.1.1 2003/02/23 21:27:28 danh Exp $

COMMENT=	"network time protocol implementation"
COMMENT-doc=	"network time protocol documentation"

DISTNAME=	ntp-${NTP_VERSION}
PKGNAME=	ntp-${NTP_VERSION:C/-rc.*//}
PKGNAME-doc=	ntp-doc-${NTP_VERSION:C/-rc.*//}
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/ntp4/ \
		http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ \
		ftp://ftp.cs.umn.edu/ftp00/ftp.udel.edu/pub/ntp/ntp4/

HOMEPAGE=	http://www.ntp.org/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

SEPARATE_BUILD=	concurrent
AUTOCONF_VERSION= 2.52
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --bindir='${PREFIX}/sbin' \
	 	--enable-accurate-adjtime --disable-IRIG

post-patch:
	@touch ${WRKSRC}/aclocal.m4 ${WRKSRC}/config.h.in ${WRKSRC}/version
	@find ${WRKSRC} -type f -name "Makefile.in" -exec touch {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@cd ${WRKSRC}/html && pax -rw * ${PREFIX}/share/doc/ntp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp

