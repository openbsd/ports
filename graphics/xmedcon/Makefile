# $OpenBSD: Makefile,v 1.5 2003/01/18 22:37:41 brad Exp $

COMMENT=	"medical image conversion"

DISTNAME=	xmedcon-0.5.2
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmedcon/}

HOMEPAGE=	http://xmedcon.sourceforge.net

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_pixbuf::graphics/gdk-pixbuf
		
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static 

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
		patch-*

.include <bsd.port.mk>
