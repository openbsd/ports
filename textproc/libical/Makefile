# $OpenBSD: Makefile,v 1.3 2010/03/21 10:25:55 ajacoutot Exp $

COMMENT=	implementation of basic iCAL protocols

DISTNAME=	libical-0.44
PKGNAME=	${DISTNAME}p0

SHARED_LIBS +=  ical                 1.0      # .44.0
SHARED_LIBS +=  icalss               1.0      # .44.0
SHARED_LIBS +=  icalvcal             0.0      # .44.0

CATEGORIES=	textproc

HOMEPAGE=	http://freeassociation.sf.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeassociation/}

MAINTAINER=	Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>

# MPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libical/
	${INSTALL_DATA} ${WRKSRC}/doc/UsingLibical.txt \
		${PREFIX}/share/doc/libical/

.include <bsd.port.mk>
