# $OpenBSD: Makefile,v 1.60 2002/03/22 13:40:00 jakob Exp $

COMMENT=	network protocol analyzer

VERSION=	0.9.2
DISTNAME=	ethereal-${VERSION}
CATEGORIES=	net x11
NEED_VERSION=	1.507

MASTER_SITES=	http://www.ethereal.com/distribution/ \
		http://ethereal.zing.org/distribution/ \
		http://ethereal.boehm.org/distribution/ \
		http://www.ethereal.com/distribution/old-versions/ \
		http://ethereal.zing.org/distribution/old-versions/ \
		http://ethereal.boehm.org/distribution/old-versions/

HOMEPAGE=	http://www.ethereal.com/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=		${PREFIX}/share/ethereal
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
SUBST_VARS+=		VERSION
SEPARATE_BUILD=		yes

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
CONFIGURE_ARGS+=	--enable-snmp
CONFIGURE_ENV+=		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" LIBS="-lsnmp -lcrypto"
LIB_DEPENDS+=		snmp::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--disable-snmp
.endif

post-patch:
	rm -f ${WRKSRC}/ltconfig ${WRKSRC}/ltmain.sh
	ln -s ${LOCALBASE}/libtool ${WRKOBJ}/libtool

.include <bsd.port.mk>
