# $OpenBSD: Makefile,v 1.13 2013/03/11 11:42:42 espie Exp $

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

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-builtintz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libical/
	${INSTALL_DATA} ${WRKSRC}/doc/UsingLibical.txt \
		${PREFIX}/share/doc/libical/

.include <bsd.port.mk>
