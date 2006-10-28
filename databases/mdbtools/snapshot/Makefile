# $OpenBSD: Makefile,v 1.5 2006/10/28 11:19:20 espie Exp $

COMMENT=	"read microsoft Access MDB"
COMMENT-gmdb=	"graphical interface to MDB tools"
DATE=		20060425
DISTNAME=	mdbtools-${DATE}
PKGNAME-gmdb=	gmdb-${DATE}p0
HOMEPAGE=	http://mdbtools.sourceforge.net/

CATEGORIES=	databases converters
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/

#MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=mdbtools/}
MULTI_PACKAGES=	-gmdb

SUBPACKAGE?=

SHARED_LIBS +=	mdb                  1.0      # .1.0
SHARED_LIBS +=	mdbsql               1.0      # .1.0

# LGPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/mdbtools
BUILD_DEPENDS=	::devel/bison \
		::lang/gawk \
		::devel/pkgconfig

LIB_DEPENDS=	glib-2.0::devel/glib2
WANTLIB=	c

MODULES=	devel/gettext


.if !defined(PACKAGING) || ${SUBPACKAGE} == "-gmdb"
LIB_DEPENDS+=	gnomeui-2::x11/gnome/libgnomeui
WANTLIB+=	audiofile bonobo-activation popt ORBit-2 pthread \
		bonoboui-2  atk-1.0 gobject-2.0 m jpeg \
		SM esd fontconfig ssl z cairo glitz png \
		gthread-2.0 art_lgpl_2 X11 glade-2.0 \
		gconf-2 ICE Xrender gmodule-2.0 \
		pango-1.0 pangoft2-1.0 \
		gnomecanvas-2 gdk-x11-2.0 xml2 Xext gnome-2 \
		gnome-keyring freetype crypto gtk-x11-2.0 \
		pangocairo-1.0 gdk_pixbuf-2.0 bonobo-2 \
		gnomevfs-2 ORBitCosNaming-2
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-gmdb"
LIB_DEPENDS+=	mdb,mdbsql::databases/mdbtools/snapshot
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == ""
WANTLIB+= readline termcap
.endif


.include <bsd.port.mk>

