# $OpenBSD: Makefile,v 1.1.1.1 2006/01/31 02:49:24 marco Exp $

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

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/
.for file in openafs-setup
	@sed s,%LOCALBASE%,${LOCALBASE},g < ${FILESDIR}/${file} > \
	${PREFIX}/sbin/${file}
.endfor
 
.include <bsd.port.mk>
