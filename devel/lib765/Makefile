# $OpenBSD: Makefile,v 1.2 2003/01/09 22:36:01 pvalchev Exp $

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
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lib765
	${INSTALL_DATA} ${WRKSRC}/doc/765.txt ${PREFIX}/share/doc/lib765

.include <bsd.port.mk>
