# $OpenBSD: Makefile,v 1.1.1.1 2002/12/16 14:28:54 grange Exp $

COMMENT=		"library for the floppy controller emulation"

DISTNAME=		lib765-0.3.0
CATEGORIES=		devel

HOMEPAGE=		http://www.seasip.demon.co.uk/Unix/LibDsk/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.seasip.demon.co.uk/Unix/LibDsk/

LIB_DEPENDS=		dsk.2::devel/libdsk

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lib765
	${INSTALL_DATA} ${WRKSRC}/doc/765.txt ${PREFIX}/share/doc/lib765

.include <bsd.port.mk>
