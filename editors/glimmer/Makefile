# $OpenBSD: Makefile,v 1.2 2002/09/11 20:32:06 danh Exp $

COMMENT=		"code editor for GNOME"

DISTNAME=		glimmer-1.2.1
CATEGORIES=		editors x11
NEED_VERSION=		1.531

HOMEPAGE=		http://glimmer.sourceforge.net/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=glimmer/}

MODULES=		gettext

PYTHON_VER=     	2.1
CONFIGURE_ENV=  	PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}
RUN_DEPENDS+=   	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS+= 	${RUN_DEPENDS}

LIB_DEPENDS=		gnomeprint.16::x11/gnome/print \
			gnomevfs.0::x11/gnome/vfs \
			gtkgl.1::x11/py-Gtk,gnome \
			python${PYTHON_VER}.0.0::lang/python/${PYTHON_VER}

SEPARATE_BUILD=		concurrent
USE_X11=                Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV+=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" 

.include <bsd.port.mk>
