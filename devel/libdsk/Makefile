# $OpenBSD: Makefile,v 1.10 2006/09/24 19:02:46 grange Exp $

COMMENT=		"library for accessing disks and disk image files"

DISTNAME=		libdsk-1.0.0
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		dsk 2.2
CATEGORIES=		devel

HOMEPAGE=		http://www.seasip.demon.co.uk/Unix/LibDsk/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=		http://www.seasip.demon.co.uk/Unix/LibDsk/

LIB_DEPENDS=		bz2.>=10::archivers/bzip2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=		${MAKE_FLAGS} DESTDIR=${WRKINST}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdsk
	${INSTALL_DATA} ${WRKSRC}/doc/libdsk.txt ${PREFIX}/share/doc/libdsk
	${INSTALL_DATA} ${WRKSRC}/doc/libdsk.pdf ${PREFIX}/share/doc/libdsk

.include <bsd.port.mk>
