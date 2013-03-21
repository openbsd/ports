# $OpenBSD: Makefile,v 1.14 2013/03/21 08:48:54 ajacoutot Exp $

COMMENT=	implementation of basic iCAL protocols

DISTNAME=	libical-0.48
REVISION=	0

SHARED_LIBS +=  ical                 2.0      # 48.0
SHARED_LIBS +=  icalss               2.0      # 48.0
SHARED_LIBS +=  icalvcal             1.0      # 48.0

CATEGORIES=	textproc

HOMEPAGE=	http://freeassociation.sf.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeassociation/}

# MPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-builtintz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libical/
	${INSTALL_DATA} ${WRKSRC}/doc/UsingLibical.txt \
		${PREFIX}/share/doc/libical/

.include <bsd.port.mk>
