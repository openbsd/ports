# $OpenBSD: Makefile,v 1.1.1.1 2000/12/18 02:17:11 obecian Exp $

DISTNAME=	grpn-1.1.1
CATEGORIES=	math x11
NEED_VERSION=	1.320

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

MASTER_SITES=	ftp://wilkins.ne.mediaone.net/pub/

HOMEPAGE=       http://wilkins.ne.mediaone.net/grpn.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/grpn ${PREFIX}/bin

.include <bsd.port.mk>
