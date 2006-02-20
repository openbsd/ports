# $OpenBSD: Makefile,v 1.7 2006/02/20 16:51:46 aanriot Exp $
# $FreeBSD: ports/sysutils/e2fsprogs/Makefile,v 1.8 2003/02/20 19:00:47 knu Exp $

COMMENT=		"utilities to manipulate ext2 filesystems"

DISTNAME=		e2fsprogs-1.27
PKGNAME=		${DISTNAME}p4
CATEGORIES=		sysutils
SHARED_LIBS=		e2p		2.3 \
			ext2fs		2.4 \
			ext2fs_com_err	2.0 \
			ss		2.0 \
			uuid		1.2

HOMEPAGE=		http://e2fsprogs.sourceforge.net/

MAINTAINER=		Laurent Corbes <caf@glot.net> \
			Sebastien Bombal <acide@bombal.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=e2fsprogs/}

SEPARATE_BUILD= 	concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-elf-shlibs
USE_GMAKE=		Yes

MAKE_FLAGS=		LIBe2p_VERSION=${LIBe2p_VERSION} \
			LIBext2fs_VERSION=${LIBext2fs_VERSION} \
			LIBext2fs_com_err_VERSION=${LIBext2fs_com_err_VERSION} \
			LIBss_VERSION=${LIBss_VERSION} \
			LIBuuid_VERSION=${LIBuuid_VERSION}
FAKE_FLAGS=		${MAKE_FLAGS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/ext2fs
	${INSTALL_DATA_DIR} ${PREFIX}/include/uuid
	${INSTALL_DATA} ${WRKSRC}/lib/ext2fs/*.h ${PREFIX}/include/ext2fs
	${INSTALL_DATA} ${WRKSRC}/lib/uuid/*.h ${PREFIX}/include/uuid
	@cd ${PREFIX}/sbin && mv fsck pfsck
	@cd ${PREFIX}/man/man8 && mv fsck.8 pfsck.8

.include <bsd.port.mk>
