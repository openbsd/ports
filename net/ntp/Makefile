# $OpenBSD: Makefile,v 1.10 2001/04/05 14:16:16 danh Exp $

COMMENT=	network time protocol implementation
COMMENT-doc=	network time protocol documentation

BROKEN=		"May be holed"
VERSION=	4.0.99k
DISTNAME=	ntp-${VERSION}
CATEGORIES=	net
NEED_VERSION=	1.361
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

PKGNAME-doc=	ntp-doc-${VERSION}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --bindir='${PREFIX}/sbin' \
		 --enable-accurate-adjtime --disable-IRIG

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@cd ${WRKSRC}/html && pax -rw * ${PREFIX}/share/doc/ntp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp

.include <bsd.port.mk>
