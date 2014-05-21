# $OpenBSD: Makefile,v 1.40 2014/05/21 06:57:42 ajacoutot Exp $

COMMENT=		high quality print drivers for foomatic and CUPS

V=			5.2.10
DISTNAME=		gutenprint-${V}

MAJOR_V=		${V:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		MAJOR_V

CATEGORIES=		print

EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS +=  gutenprint           2.0      # 5.0

HOMEPAGE=		http://gimp-print.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += avahi-client avahi-common c crypto cups cupsimage dbus-1
WANTLIB += ijs m ncurses pthread readline ssl usb-1.0 z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gimp-print/}

MODULES=		devel/gettext

BUILD_DEPENDS=		print/foomatic-db-engine

LIB_DEPENDS=		devel/libusb1 \
			print/cups,-libs \
			print/ijs

# foomatic-rip(1), foomatic-db(-engine)
RUN_DEPENDS +=		print/cups-filters

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
                        --enable-static \
                        --enable-cups-ppds-at-top-level \
                        --disable-translated-cups-ppds \
                        --disable-libgutenprintui2 \
                        --with-cups=${LOCALBASE} \
                        --without-gimp2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.for i in DVIPS DB2PDF DVIPDF DB2PS DB2HTML DOXYGEN TEXI2HTML CONVERT
CONFIGURE_ENV+=		ac_cv_path_$i=""
.endfor

MAKE_FLAGS=		INTLLIBS='$$(LTLIBINTL)'
FAKE_FLAGS=		cups_conf_serverroot=${PREFIX}/share/examples/gutenprint

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	mv ${PREFIX}/share/gutenprint/doc \
		${PREFIX}/share/doc/gutenprint
	rm ${PREFIX}/share/foomatic/kitload.log

.include <bsd.port.mk>
