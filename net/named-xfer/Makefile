# $OpenBSD: Makefile,v 1.9 2004/09/29 15:06:38 jakob Exp $

COMMENT=	"zone transfer program from BIND v8"

VERSION=	8.4.5
PKGNAME=	named-xfer-${VERSION}
DISTNAME=	named-xfer-${VERSION}
CATEGORIES=	net

DIST_SUBDIR=	bind-${VERSION}
DISTFILES=	bind-src.tar.gz bind-doc.tar.gz

MASTER_SUBDIR=	src/${VERSION}

MASTER_SITES+=	ftp://ftp.isc.org/isc/bind/${MASTER_SUBDIR}/ \
		ftp://ftp.epix.net/pub/isc/bind/${MASTER_SUBDIR}/ \
		ftp://ftp.nominum.com/pub/isc/bind/${MASTER_SUBDIR}/ \
		ftp://ftp.sunet.se/pub/network/isc/bind/${MASTER_SUBDIR}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.isc.org/isc/bind/${MASTER_SUBDIR}/ \
		ftp://ftp.iij.ad.jp/pub/network/isc/bind/${MASTER_SUBDIR}/ \

HOMEPAGE=	http://www.isc.org/products/BIND/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


SEPARATE_BUILD=		simple
WRKDIST=		${WRKDIR}/src
PATCH_LIST=		patch-bin_named-xfer_Makefile

do-configure:
	cd ${WRKSRC}; ${MAKE_PROGRAM} DST=${WRKBUILD}/obj SRC=${WRKSRC} links
	cd ${WRKBUILD}/obj; ${PATCH} < ${PATCHDIR}/patch-Makefile

do-build:
	cd ${WRKBUILD}/obj; ${MAKE_PROGRAM}
	cd ${WRKBUILD}/obj/bin/named; ${MAKE_PROGRAM} SYSTYPE=openbsd \
		tmp_version.o db_glue.o ns_glue.o
	cd ${WRKBUILD}/obj/bin/named-xfer; ${MAKE_PROGRAM} SYSTYPE=openbsd

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/obj/bin/named-xfer/named-xfer ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKDIR}/doc/man/named-xfer.lst8 ${PREFIX}/man/cat8/named-xfer.0

NO_REGRESS=	Yes

.include <bsd.port.mk>
