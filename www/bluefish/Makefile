# $OpenBSD: Makefile,v 1.23 2002/11/24 18:28:24 couderc Exp $

COMMENT=	"HTML editor for experienced web designers"

DISTNAME=	bluefish-0.7
CATEGORIES=	www 
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

MASTER_SITES=	http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/ \
		ftp://bluefish.advancecreations.com/bluefish/downloads/ \
		http://bluefish.mrball.net/downloads/ \
		ftp://ftp.ratisbona.com/pub/bluefish/downloads/ \
		http://bluefish.shellhung.org/downloads/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		ungif.5::graphics/libungif

FLAVORS=        imlib
FLAVOR?=

.if ${FLAVOR:L:Mimlib}
LIB_DEPENDS+=   gdk_imlib.19::graphics/imlib
CONFIGURE_ARGS+= --disable-gdk-pixbuf
.else
LIB_DEPENDS+=   gdk_pixbuf.2::graphics/gdk-pixbuf
CONFIGURE_ARGS+= --disable-imlib
.endif

CONFIGURE_STYLE= autoconf dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
# default locations
CONFIGURE_ENV+=	WEBLINT=${LOCALBASE}/bin/weblint \
		NETSCAPE=${LOCALBASE}/bin/netscape \
		TIDY=${LOCALBASE}/bin/tidy \
		RXVT=${LOCALBASE}/bin/rxvt \
		MIDNIGHT_COMMANDER=${LOCALBASE}/bin/mc

NO_REGRESS=	Yes

MANUAL=		${PREFIX}/share/doc/bluefish

post-install:
	${INSTALL_DATA_DIR} ${MANUAL}
	cd ${WRKSRC}/manual && \
	    find . -type d -exec ${INSTALL_DATA_DIR} ${MANUAL}/{} \; && \
	    find . -type f -exec ${INSTALL_DATA} {} ${MANUAL}/{} \;

.include <bsd.port.mk>
