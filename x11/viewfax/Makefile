# $OpenBSD: Makefile,v 1.8 2000/06/10 00:57:58 espie Exp $
# $FreeBSD: Makefile,v 1.9 1998/03/07 23:26:23 jmz Exp $

DISTNAME=	viewfax-2.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

USE_IMAKE=	Yes

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
