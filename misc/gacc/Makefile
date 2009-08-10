# $OpenBSD: Makefile,v 1.18 2009/08/10 06:33:02 kili Exp $

COMMENT=	personal accounts manager

VERSION=	0.7.5
DISTNAME=	gacc_${VERSION}.orig
PKGNAME=	gacc-${VERSION}p3
CATEGORIES=	misc productivity

HOMEPAGE=	http://tnemeth.free.fr/projets/gAcc-en.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdmcp Xext Xi c glib gmodule iconv intl m \
		pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gacc/}

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share/examples/gacc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

WRKDIST=        ${WRKDIR}/gacc-${VERSION}.orig

.include <bsd.port.mk>
