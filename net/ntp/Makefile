# $OpenBSD: Makefile,v 1.2 2001/02/07 18:13:43 danh Exp $

DISTNAME=	ntp-4.0.99k
CATEGORIES=	net
NEED_VERSION=	1.352
MASTER_SITES=	ftp://ftp.udel.edu/pub/ntp/ntp4/ \
		ftp://ftp.cs.umn.edu/mirrors00/ftp.udel.edu/pub/ntp/ntp3/

HOMEPAGE=	http://www.eecis.udel.edu/~ntp/

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-doc
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-doc"
PKGNAME=	ntp-doc-4.0.99k
.endif

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --bindir='${PREFIX}/sbin' \
		 --enable-accurate-adjtime --disable-IRIG

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntp
	@cd ${WRKSRC}/html && pax -rw * ${PREFIX}/share/doc/ntp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ntp
	@cd ${WRKSRC}/conf && pax -rw * ${PREFIX}/share/examples/ntp

.include <bsd.port.mk>
