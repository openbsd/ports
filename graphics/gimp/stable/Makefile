# $OpenBSD: Makefile,v 1.5 2004/12/14 11:09:54 espie Exp $

COMMENT=	"GNU Image Manipulation Program"

VERSION=	1.2.5
DISTNAME=	gimp-${VERSION}
CATEGORIES=	graphics
DIR=		gimp/v1.2/v${VERSION}
MASTER_SITES=	ftp://ftp.gimp.org/pub/${DIR}/ \
		ftp://ftp.sunet.se/pub/gnu/${DIR}/ \
		ftp://ftp.cs.umn.edu/pub/${DIR}/ \
		ftp://ftp.funet.fi/pub/mirrors/ftp.gimp.org/${DIR}/

HOMEPAGE=	http://www.gimp.org/

LIB_DEPENDS+=	gtk.1.2,gdk.1.2::x11/gtk+ \
		aa.1.3::graphics/aalib \
		mpeg.13::graphics/mpeg-lib \
		png.2::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	:wget-*:net/wget
RUN_DEPENDS=	:wget-*:net/wget

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi Xmu Xpm Xt c \
			glib gmodule iconv intl jpeg m z

CONFDIR=	${SYSCONFDIR}/gimp/1.2
SUBST_VARS=	CONFDIR

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-perl --disable-print --disable-gtkdoc
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GNOME_CONFIG=/dev/null \
		EMACS=/dev/null

.include <bsd.port.mk>
