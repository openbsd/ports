# $OpenBSD: Makefile,v 1.38 2013/12/12 14:53:11 ajacoutot Exp $

COMMENT=		high quality print drivers for foomatic and CUPS

V=			5.2.9
DISTNAME=		gutenprint-${V}

REVISION=		4

MAJOR_V=		${V:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		MAJOR_V

CATEGORIES=		print

EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS+=		gutenprint	1.0	# .2.3

HOMEPAGE=		http://gimp-print.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c crypto cups cupsimage gssapi ijs krb5 m ncurses
WANTLIB += pthread readline ssl z avahi-client avahi-common dbus-1
WANTLIB += com_err heimbase roken wind

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gimp-print/}

MODULES=		devel/gettext

BUILD_DEPENDS=		print/foomatic-db-engine

LIB_DEPENDS=		print/cups,-libs \
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
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv -lintl" \
			am_cv_prog_tar_ustar=plaintar

.for i in DVIPS DB2PDF DVIPDF DB2PS DB2HTML DOXYGEN TEXI2HTML CONVERT
CONFIGURE_ENV+=		ac_cv_path_$i=""
.endfor

FAKE_FLAGS=		cups_conf_serverroot=${PREFIX}/share/examples/gutenprint

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc
	mv ${PREFIX}/share/gutenprint/doc \
		${PREFIX}/share/doc/gutenprint
	rm ${PREFIX}/share/foomatic/kitload.log

.include <bsd.port.mk>
