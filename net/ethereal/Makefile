# $OpenBSD: Makefile,v 1.72 2003/04/25 07:26:51 wilfried Exp $

COMMENT=	"network protocol analyzer"

VERSION=	0.9.11
DISTNAME=	ethereal-${VERSION}
CATEGORIES=	net x11

MASTER_SITES=	http://www.ethereal.com/distribution/ \
		http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://www.ethereal.com/distribution/old-versions/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

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

FLAVORS=	no_x11 snmp
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
LIB_DEPENDS=		glib.1.2,gmodule.1.2::devel/glib
CONFIGURE_ARGS+=	--disable-ethereal
.else
USE_X11=		Yes
LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
CONFIGURE_ARGS+=	--enable-ethereal
.endif

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=	--with-ucdsnmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto -ldes"
LIB_DEPENDS+=		snmp::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--without-ucdsnmp
.endif

pre-configure:
	rm -f ${WRKSRC}/ltconfig ${WRKSRC}/ltmain.sh
	rm -f ${WRKBUILD}/libtool
	ln -s ${LIBTOOL} ${WRKBUILD}/libtool

.include <bsd.port.mk>
