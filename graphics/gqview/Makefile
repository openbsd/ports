# $OpenBSD: Makefile,v 1.9 2000/03/24 22:11:45 espie Exp $
# $FreeBSD: Makefile,v 1.15 1999/08/25 06:14:08 obrien Exp $

DISTNAME=	gqview-0.7.0.src
PKGNAME=	gqview-0.7.0
CATEGORIES=	graphics
NEED_VERSION=	1.223
MASTER_SITES=	http://gqview.netpedia.net/ \
		http://www.geocities.com/SiliconValley/Haven/5235/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	glib.1.2:devel/glib \
		gtk.1.2:x11/gtk+ \
		gdk_imlib.19:graphics/imlib

USE_X11=	Yes

ALL_TARGET=	gqview
WRKDIST=	${WRKDIR}/${PKGNAME}

post-install:
	@mkdir -p ${PREFIX}/share/doc/gqview
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gqview/README

.include <bsd.port.mk>
