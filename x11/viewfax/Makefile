# $OpenBSD: Makefile,v 1.18 2005/10/05 09:51:47 bernd Exp $
# $FreeBSD: Makefile,v 1.9 1998/03/07 23:26:23 jmz Exp $

COMMENT=	"display files containing g3 and/or g4 coded fax pages"

DISTNAME=	viewfax-2.6
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.ping.de/pub/unix/ \
		ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

CONFIGURE_STYLE=	imake

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c

USE_X11=	Yes
NO_REGRESS=	Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
