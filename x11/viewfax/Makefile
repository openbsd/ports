# $OpenBSD: Makefile,v 1.7 2000/04/09 17:38:44 espie Exp $
# $FreeBSD: Makefile,v 1.9 1998/03/07 23:26:23 jmz Exp $

DISTNAME=	viewfax-2.3
CATEGORIES=	x11
FAKE=No
MASTER_SITES=	ftp://ftp.leo.org/pub/comp/os/unix/networking/mgetty/

USE_IMAKE=	yes

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/viewfax

.include <bsd.port.mk>
