# $OpenBSD: Makefile,v 1.7 2006/12/16 12:22:32 espie Exp $

COMMENT=	"library to access the contents of an iPod"
DISTNAME=	libgpod-0.4.0
SHARED_LIBS=	gpod	400.0
CATEGORIES=	audio
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/libgpod.html

MAINTAINER=	Chris Kuethe <ckuethe@ualberta.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MODULES=	gettext

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
		gdk_pixbuf-2.0::x11/gtk+2
WANTLIB=	m

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CXXFLAGS} -ftrampolines" \
		CFLAGS="${CFLAGS} -ftrampolines"

.include <bsd.port.mk>
