# $OpenBSD: Makefile,v 1.14 2002/03/21 21:25:56 espie Exp $
# $FreeBSD: Makefile,v 1.9 1998/03/07 23:26:23 jmz Exp $

COMMENT=	"display files containing g3 and/or g4 coded fax pages"

DISTNAME=	viewfax-2.3
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

CONFIGURE_STYLE=	imake

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
