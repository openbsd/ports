# $OpenBSD: Makefile,v 1.1.1.1 2005/12/26 11:30:12 sturm Exp $Id: Makefile,v 1.8 2005/12/15 13:46:01 trahm Exp $

COMMENT=		"writes any log live onto the background"
DISTNAME=		xrootconsole-0.6
CATEGORIES=		x11	

MAINTAINER=		Sebastian Trahm <inthisdefiance@gmx.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=        	X11 c util

MASTER_SITES=           ${MASTER_SITE_SOURCEFORGE:=xrootconsole/}

NO_REGRESS=		Yes
USE_X11=		Yes

CFLAGS+=		-I$(X11BASE)/include

OBJS = main.o util.o

do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} -c main.c -DXROOTCONSOLE_VERSION=\"RELEASE-0_6\"; \
	${CC} ${CFLAGS} -c util.c -DXROOTCONSOLE_VERSION=\"RELEASE-0_6\"; \
	${CC} ${OBJS} -L$(X11BASE)/lib -lX11 -lutil -o xrootconsole; 

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xrootconsole ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xrootconsole.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
