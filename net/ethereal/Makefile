# $OpenBSD: Makefile,v 1.90 2004/05/10 06:14:43 jakob Exp $

COMMENT=	"network protocol analyzer"
COMMENT-x11=	"network protocol analyzer (X11 GUI)"

VERSION=	0.10.3
DISTNAME=	ethereal-${VERSION}
CATEGORIES=	net x11

FULLPKGNAME=		tethereal-${VERSION}${FLAVOR_EXT}
FULLPKGNAME-x11=	ethereal-${VERSION}${FLAVOR_EXT}

MASTER_SITES=	http://www.ethereal.com/distribution/all-versions/ \
		http://ethereal.zing.org/distribution/all-versions/ \
		http://ethereal.boehm.org/distribution/all-versions/

HOMEPAGE=	http://www.ethereal.com/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
SUBST_VARS+=		VERSION
SEPARATE_BUILD=		concurrent

FLAVORS=	snmp adns gtk1
PSEUDO_FLAVORS=	no_x11
FLAVOR?=
SUBPACKAGE?=

.if ! ${FLAVOR:L:Mno_x11}
USE_X11=		Yes
.endif

MODULES+=		iconv
LIB_DEPENDS+=		pcre::devel/pcre

CONFIGURE_ARGS+=	--with-pcre=${LOCALBASE} \
			--with-glib-prefix=${LOCALBASE} \

.if ! ${FLAVOR:L:Mno_x11}
MULTI_PACKAGES+=	-x11
CONFIGURE_ARGS+=	--enable-ethereal \
			--with-gtk-prefix=${LOCALBASE}
.else
CONFIGURE_ARGS+=	--disable-ethereal
.endif

.if ${FLAVOR:L:Mgtk1}
CONFIGURE_ARGS+=	--enable-gtk1
LIB_DEPENDS+=		glib.1.2,gmodule.1.2::devel/glib
.if ! ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=		gtk.1.2::x11/gtk+
.endif
.else
CONFIGURE_ARGS+=	--enable-gtk2
LIB_DEPENDS+=		glib-2.0.0.0,gthread-2.0.0.0::devel/glib2
BUILD_DEPENDS+=		:pkgconfig-*:devel/pkgconfig
.if ! ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=		gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
.endif
.endif

.if ${SUBPACKAGE} == "-x11"
.if ${FLAVOR:L:Mgtk1}
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
.else
LIB_DEPENDS+=		gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
.endif
RUN_DEPENDS+=		:tethereal-${VERSION}${FLAVOR_EXT}:net/ethereal
.endif

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=	--with-ucd-snmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto -ldes"
LIB_DEPENDS+=		snmp::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--without-ucd-snmp
.endif

.if ${FLAVOR:L:Madns}
CONFIGURE_ARGS+=	--with-adns=${LOCALBASE}
LIB_DEPENDS+=		adns::net/adns
CFLAGS+=		-I${LOCALBASE}/include
.else
CONFIGURE_ARGS+=	--without-adns
.endif

pre-configure:
	rm -f ${WRKSRC}/ltconfig ${WRKSRC}/ltmain.sh
	rm -f ${WRKBUILD}/libtool
	ln -s ${LIBTOOL} ${WRKBUILD}/libtool

post-configure:
	rm -f ${WRKBUILD}/epan/libtool
	rm -f ${WRKBUILD}/wiretap/libtool
	ln -s ${LIBTOOL} ${WRKBUILD}/epan/libtool
	ln -s ${LIBTOOL} ${WRKBUILD}/wiretap/libtool

.include <bsd.port.mk>
