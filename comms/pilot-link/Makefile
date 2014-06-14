# $OpenBSD: Makefile,v 1.73 2014/06/14 10:34:44 sthen Exp $

COMMENT=	tools to connect your PalmOS(R) compatible handheld

DISTNAME=	pilot-link-0.12.5
SHARED_LIBS +=	pisock               11.0      # .9.2
SHARED_LIBS +=	pisync               2.0      # .0.3

REVISION=	6

CATEGORIES=	comms

MASTER_SITES=	http://downloads.pilot-link.org/ \
		http://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
		http://gentoo.oregonstate.edu/distfiles/

HOMEPAGE=	http://www.pilot-link.org/

EXTRACT_SUFX=	.tar.bz2

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m png>=4 popt readline termcap z pthread

MODULES=		devel/gettext
LIB_DEPENDS=		graphics/png \
			devel/popt

USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			PTHREAD_CFLAGS="-pthread" \
			PTHREAD_LIBS="-pthread" \
			ac_cv_lib_png_main=yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libiconv=${LOCALBASE} \
			--with-libpng=${LOCALBASE} \
			--with-perl=/usr/bin/perl \
			--with-readline \
			--enable-conduits \
			--enable-threads \
			--without-bluez \
			--without-efence \
			--without-java \
			--without-python \
			--without-tcl

post-extract:
	@rm ${WRKSRC}/bindings/Perl/Pilot.xs.orig

pre-configure:
	@perl -pi -e "s,!!CFLAGS!!,${CFLAGS},g" ${WRKSRC}/bindings/Perl/Makefile.PL.in
	@perl -pi -e "s,Libs: ,Libs: -pthread ,g" \
		${WRKSRC}/pilot-link.pc.in ${WRKSRC}/pilot-link-pp.pc.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pilot-link
	${INSTALL_DATA} ${WRKSRC}/doc/README.debugging ${PREFIX}/share/doc/pilot-link
	${INSTALL_DATA} ${WRKSRC}/doc/README.usb ${PREFIX}/share/doc/pilot-link
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.7 ${PREFIX}/man/man7

.include <bsd.port.mk>
