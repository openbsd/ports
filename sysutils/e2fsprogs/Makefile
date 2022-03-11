COMMENT=	utilities to manipulate ext2 filesystems

DISTNAME=	e2fsprogs-1.46.2
REVISION=	0
CATEGORIES=	sysutils devel
SHARED_LIBS=	blkid		0.0 \
		com_err		21.0 \
		e2p		3.2 \
		ext2fs		5.0 \
		ss		3.2 \
		uuid		14.0

HOMEPAGE=	http://e2fsprogs.sourceforge.net/
PORTROACH=	site:https://github.com/tytso/e2fsprogs/releases/

# GPLv2/LGPLv2/BSD/MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c execinfo iconv intl pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=e2fsprogs/}

DEBUG_PACKAGES=	${BUILD_PACKAGES}
LIB_DEPENDS=	devel/gettext,-runtime

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-tls \
		--disable-uuidd \
		--disable-fuse2fs \
		--enable-elf-shlibs \
		--enable-verbose-makecmds
CONFIGURE_ENV=	CPPFLAGS="-D_EXT2_USE_C_VERSIONS_" \
		LDFLAGS="-lexecinfo"
USE_GMAKE=	Yes

MAKE_FLAGS=	LIBINTL="-L${LOCALBASE}/lib -lintl -liconv" \
		LIBblkid_VERSION=${LIBblkid_VERSION} \
		LIBcom_err_VERSION=${LIBcom_err_VERSION} \
		LIBe2p_VERSION=${LIBe2p_VERSION} \
		LIBext2fs_VERSION=${LIBext2fs_VERSION} \
		LIBss_VERSION=${LIBss_VERSION} \
		LIBuuid_VERSION=${LIBuuid_VERSION}

FAKE_FLAGS=	root_sysconfdir=${PREFIX}/share/examples/e2fsprogs

INSTALL_TARGET=	install install-libs

post-install:
	cd ${PREFIX}/sbin && mv fsck fsck_ext2fs
	cd ${PREFIX}/man/man8 && mv fsck.8 fsck_ext2fs.8

pre-test:
	printf '#!/bin/sh\nexec /bin/md5 $$*\n' > ${WRKDIR}/bin/md5sum
	chmod +x ${WRKDIR}/bin/md5sum

.include <bsd.port.mk>
