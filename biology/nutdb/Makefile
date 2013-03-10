# $OpenBSD: Makefile,v 1.30 2013/03/10 23:04:44 espie Exp $

COMMENT=	record and analyze your meals for nutrient composition

V=		16.12
DISTNAME=	nut-${V}
PKGNAME=	nutdb-${V}
REVISION=	1
CATEGORIES=	biology
HOMEPAGE=	http://nut.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xext c fltk m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nut/}

NO_TEST=	Yes

LIB_DEPENDS=	x11/fltk

MAKE_FLAGS+=	CC="${CC}" \
		prefix=${PREFIX} \
		libdir=${PREFIX}/lib/nutdb

USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nut ${PREFIX}/bin/nutdb
	${INSTALL_PROGRAM} ${WRKSRC}/fltk/Nut ${PREFIX}/bin/Nutdb
	${INSTALL_MAN} ${WRKSRC}/nut.1 ${PREFIX}/man/man1/nutdb.1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nutdb
	${INSTALL_DATA} ${WRKSRC}/raw.data/* ${PREFIX}/lib/nutdb

.include <bsd.port.mk>
