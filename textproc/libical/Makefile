# $OpenBSD: Makefile,v 1.15 2013/06/09 10:53:42 ajacoutot Exp $

COMMENT=	implementation of basic iCAL protocols

DISTNAME=	libical-1.0

SHARED_LIBS +=  ical                 2.0      # 48.0
SHARED_LIBS +=  icalss               2.0      # 48.0
SHARED_LIBS +=  icalvcal             1.0      # 48.0

CATEGORIES=	textproc

HOMEPAGE=	http://freeassociation.sf.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeassociation/}

# MPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-builtintz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libical/
	${INSTALL_DATA} ${WRKSRC}/doc/UsingLibical.txt \
		${PREFIX}/share/doc/libical/

.include <bsd.port.mk>
