# $OpenBSD: Makefile,v 1.11 2001/01/22 16:40:22 brad Exp $
# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $

DISTNAME=	expat-1.95.1
CATEGORIES=	textproc
NEED_VERSION=	1.351
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= expat

HOMEPAGE=	http://expat.sourceforge.net/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

post-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmlwf/xmlwf ${PREFIX}/bin

.include <bsd.port.mk>
