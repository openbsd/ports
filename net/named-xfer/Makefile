# $OpenBSD: Makefile,v 1.3 2003/04/10 18:08:57 jsyn Exp $

COMMENT=	"zone transfer program from BIND v8"

VERSION=	8.3.3
PKGNAME=	named-xfer-${VERSION}
CATEGORIES=	net

DIST_SUBDIR=	bind-${VERSION}
DISTFILES=	bind-src.tar.gz bind-doc.tar.gz

MASTER_SITES+=	ftp://ftp.isc.org/isc/bind/src/${VERSION}/ \
		ftp://ftp.epix.net/pub/isc/bind/src/${VERSION}/ \
		ftp://ftp.nominum.com/pub/isc/bind/src/${VERSION}/ \
		ftp://ftp.sunet.se/pub/network/isc/bind/src/${VERSION}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.isc.org/isc/bind/src/${VERSION}/ \
		ftp://ftp.iij.ad.jp/pub/network/isc/bind/src/${VERSION}/ \

HOMEPAGE=	http://www.isc.org/products/BIND/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


SEPARATE_BUILD=		simple
WRKDIST=		${WRKDIR}/src
PATCH_LIST=

do-configure:
	cd ${WRKSRC}; ${MAKE_PROGRAM} DST=${WRKBUILD}/obj SRC=${WRKSRC} links
	cd ${WRKBUILD}/obj; ${PATCH} < ${PATCHDIR}/patch-Makefile
# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
	cd ${WRKBUILD}/obj; ${PATCH} < ${PATCHDIR}/gcc-lib_cylink_Makefile
.endif

do-build:
	cd ${WRKBUILD}/obj; ${MAKE_PROGRAM}
	cd ${WRKBUILD}/obj/bin/named; ${MAKE_PROGRAM} SYSTYPE=openbsd \
		tmp_version.o db_glue.o ns_glue.o
	cd ${WRKBUILD}/obj/bin/named-xfer; ${MAKE_PROGRAM} SYSTYPE=openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/obj/bin/named-xfer/named-xfer ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKDIR}/doc/man/named-xfer.lst8 ${PREFIX}/man/cat8/named-xfer.0

.include <bsd.port.mk>
