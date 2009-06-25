# $OpenBSD: Makefile,v 1.14 2009/06/25 01:09:12 jolan Exp $
# $FreeBSD: ports/sysutils/e2fsprogs/Makefile,v 1.8 2003/02/20 19:00:47 knu Exp $

COMMENT-main=		utilities to manipulate ext2 filesystems
COMMENT-uuid=		unique id generator library

V=			1.41.4
DISTNAME=		e2fsprogs-${V}
PKGNAME-main=		${DISTNAME}p0
PKGNAME-uuid=		e2fs-uuid-${V}p0
CATEGORIES-uuid=	devel
CATEGORIES=		sysutils
SHARED_LIBS=		blkid		0.0 \
			e2p		3.0 \
			ext2fs		3.0 \
			ext2fs_com_err	3.0 \
			ss		3.0 \
			uuid		2.0

HOMEPAGE=		http://e2fsprogs.sourceforge.net/

MULTI_PACKAGES=		-main -uuid

# GPLv2/LGPLv2/BSD/MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c iconv intl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=e2fsprogs/}

MODULES=		devel/gettext

SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-elf-shlibs --disable-tls
USE_GMAKE=		Yes

MAKE_FLAGS=		LIBblkid_VERSION=${LIBblkid_VERSION} \
			LIBe2p_VERSION=${LIBe2p_VERSION} \
			LIBext2fs_VERSION=${LIBext2fs_VERSION} \
			LIBext2fs_com_err_VERSION=${LIBext2fs_com_err_VERSION} \
			LIBss_VERSION=${LIBss_VERSION} \
			LIBuuid_VERSION=${LIBuuid_VERSION}
LIB_DEPENDS-main=	lib/uuid/uuid::${BUILD_PKGPATH},-uuid

INSTALL_TARGET=		install install-libs
post-install:
	cd ${PREFIX}/sbin && mv fsck fsck_ext2fs
	cd ${PREFIX}/man/man8 && mv fsck.8 fsck_ext2fs.8
	${INSTALL_DATA_DIR} ${PREFIX}/lib/uuid
	mv ${PREFIX}/lib/libuuid.* ${PREFIX}/lib/uuid
	mv ${PREFIX}/lib/pkgconfig/uuid.pc ${PREFIX}/lib/pkgconfig/e2fs-uuid.pc
	if [ -f ${PREFIX}/lib/uuid/libuuid.so.${LIBuuid_VERSION} ]; then \
		ln -s uuid/libuuid.so.${LIBuuid_VERSION} ${PREFIX}/lib; \
	fi

.include <bsd.port.mk>
