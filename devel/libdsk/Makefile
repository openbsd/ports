# $OpenBSD: Makefile,v 1.1.1.1 2002/12/16 14:27:34 grange Exp $

COMMENT=		"library for accessing disks and disk image files"

DISTNAME=		libdsk-0.9.9
CATEGORIES=		devel

HOMEPAGE=		http://www.seasip.demon.co.uk/Unix/LibDsk/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.seasip.demon.co.uk/Unix/LibDsk/

LIB_DEPENDS=		bz2.10::archivers/bzip2

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdsk
	${INSTALL_DATA} ${WRKSRC}/doc/libdsk.txt ${PREFIX}/share/doc/libdsk
	${INSTALL_DATA} ${WRKSRC}/doc/libdsk.pdf ${PREFIX}/share/doc/libdsk

.include <bsd.port.mk>
