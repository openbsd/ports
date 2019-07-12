# $OpenBSD: Makefile,v 1.41 2019/07/12 20:49:42 sthen Exp $

COMMENT=	utilities to manipulate ext2 filesystems

DISTNAME=	e2fsprogs-1.42.12
REVISION=	5
CATEGORIES=	sysutils devel
SHARED_LIBS=	blkid		0.0 \
		com_err		21.0 \
		e2p		3.1 \
		ext2fs		4.1 \
		ss		3.1 \
		uuid		14.0

HOMEPAGE=	http://e2fsprogs.sourceforge.net/

# GPLv2/LGPLv2/BSD/MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=e2fsprogs/}

LIB_DEPENDS=	devel/gettext,-runtime

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --disable-tls \
		--disable-uuidd \
		--enable-elf-shlibs
CONFIGURE_ENV=	CPPFLAGS="-D_EXT2_USE_C_VERSIONS_" \
		ac_cv_header_execinfo_h=no
USE_GMAKE=	Yes

MAKE_FLAGS=	V=1 \
		LIBINTL="-L${LOCALBASE}/lib -lintl -liconv" \
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
