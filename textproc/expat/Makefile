# $OpenBSD: Makefile,v 1.13 2001/05/06 04:11:41 lebel Exp $
# $FreeBSD: Makefile,v 1.2 1999/08/31 02:09:14 peter Exp $

COMMENT=	"XML 1.0 parser written in C"

DISTNAME=	expat-1.95.1
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= expat

HOMEPAGE=	http://expat.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
