# $OpenBSD: Makefile,v 1.79 2003/11/20 03:17:11 brad Exp $

COMMENT=	"network protocol analyzer"

VERSION=	0.9.16
DISTNAME=	ethereal-${VERSION}
CATEGORIES=	net x11

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

FLAVORS=	no_x11 snmp adns
FLAVOR?=

CONFIGURE_ARGS+=	--enable-gtk2 \
			--with-glib-prefix=${LOCALBASE}
LIB_DEPENDS+=		glib-2.0.0.0,gthread-2.0.0.0::devel/glib2

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--disable-ethereal
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--enable-ethereal \
			--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
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

.include <bsd.port.mk>
