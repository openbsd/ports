# $OpenBSD: Makefile,v 1.29 2013/06/21 22:35:51 sthen Exp $

COMMENT=	utilities to manipulate ext2 filesystems

DISTNAME=	e2fsprogs-1.42.7
CATEGORIES=	sysutils devel
SHARED_LIBS=	blkid		0.0 \
		e2p		3.1 \
		ext2fs		3.1 \
		ss		3.1 \
		uuid		14.0

HOMEPAGE=	http://e2fsprogs.sourceforge.net/

# GPLv2/LGPLv2/BSD/MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=e2fsprogs/}

MODULES=	devel/gettext

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --enable-elf-shlibs --disable-tls
CONFIGURE_ENV=	CPPFLAGS="${CPPFLAGS} -D_EXT2_USE_C_VERSIONS_"
USE_GMAKE=	Yes

MAKE_FLAGS=	V=1 \
		LIBblkid_VERSION=${LIBblkid_VERSION} \
		LIBe2p_VERSION=${LIBe2p_VERSION} \
		LIBext2fs_VERSION=${LIBext2fs_VERSION} \
		LIBss_VERSION=${LIBss_VERSION} \
		LIBuuid_VERSION=${LIBuuid_VERSION}

FAKE_FLAGS=	root_sysconfdir=${PREFIX}/share/examples/e2fsprogs

INSTALL_TARGET=	install install-libs

post-install:
	cd ${PREFIX}/sbin && mv fsck fsck_ext2fs
	cd ${PREFIX}/man/man8 && mv fsck.8 fsck_ext2fs.8
	cd ${PREFIX}; rm -f lib/libcom_err.* lib/pkgconfig/com_err.pc \
	    include/com_err.h include/et/com_err.h bin/compile_et \
	    man/man1/compile_et.1 man/man3/com_err.3
	rmdir ${PREFIX}/include/et

pre-test:
	printf '#!/bin/sh\nexec /bin/md5 $$*\n' > ${WRKDIR}/bin/md5sum
	chmod +x ${WRKDIR}/bin/md5sum

.include <bsd.port.mk>
