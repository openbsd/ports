# $OpenBSD: Makefile,v 1.23 2002/10/01 12:23:42 naddy Exp $

COMMENT=	"network time protocol implementation"
COMMENT-doc=	"network time protocol documentation"

VERSION=	4.1.72
DISTNAME=	ntp-${VERSION}
PKGNAME=	ntp-${VERSION}p1
PKGNAME-doc=	ntp-doc-${VERSION}
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/ntp4/ \
		http://www.eecis.udel.edu/~ntp/ntp_spool/ntp4/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ntp4/

HOMEPAGE=	http://www.ntp.org/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

SEPARATE_BUILD=	concurrent
AUTOCONF_NEW=	Yes
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --bindir='${PREFIX}/sbin' \
	 	--enable-accurate-adjtime --disable-IRIG \
		--with-openssl-libdir=/usr/lib \
		--with-openssl-incdir=/usr/include \
		--with-crypto=openssl

post-patch:
	@touch ${WRKSRC}/aclocal.m4

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@cd ${WRKSRC}/html && pax -rw * ${PREFIX}/share/doc/ntp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp
	@mv ${PREFIX}/sbin/genkeys ${PREFIX}/sbin/ntp-genkeys

.include <bsd.port.mk>
