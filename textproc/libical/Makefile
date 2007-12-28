# $OpenBSD: Makefile,v 1.1.1.1 2007/12/28 17:32:12 okan Exp $

COMMENT=	implementation of basic iCAL protocols

DISTNAME=	libical-0.27
SHARED_LIBS+=	ical	0.0 # .27.6
SHARED_LIBS+=	icalss	0.0 # .27.6

CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freeassociation/}

MAINTAINER=	Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>

# MPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libical/
	${INSTALL_DATA} ${WRKSRC}/doc/UsingLibical.txt \
		${PREFIX}/share/doc/libical/

.include <bsd.port.mk>
