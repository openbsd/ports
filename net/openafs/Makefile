# $OpenBSD: Makefile,v 1.3 2006/02/02 03:21:57 todd Exp $

COMMENT=		"OpenAFS"

DISTNAME=		openafs-1.4.0-src
PKGNAME=		openafs-1.4.0
CATEGORIES=		net

HOMEPAGE=		http://www.openafs.org

MAINTAINER=		Ober J. Heim <ober@linbsd.org>

ONLY_FOR_ARCHS= i386

# ???
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c pthread

MASTER_SITES=		http://www.openafs.org/dl/openafs/1.4.0/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.13
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-namei-fileserver \
			--enable-largefile-fileserver \
			--enable-supergroups \
			--with-afs-sysname=${ARCH}_obsd${OSrev} \
			--enable-debug
COPTS+= -ggdb
WRKDIST=		${WRKDIR}/${PKGNAME}

.if !exists(/usr/src/sys/lib/libkern/libkern.h)
ERRORS += "Fatal: You cannot build this port without kernel sources"
.endif

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/
.for file in openafs-setup
	@sed s,%LOCALBASE%,${LOCALBASE},g < ${FILESDIR}/${file} > \
	${PREFIX}/sbin/${file}
	@chmod u+x ${PREFIX}/sbin/${file}
.endfor
 
.include <bsd.port.mk>
