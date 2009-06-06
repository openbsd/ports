# $OpenBSD: Makefile,v 1.57 2009/06/06 21:51:40 landry Exp $
# $NetBSD: Makefile,v 1.37 2004/10/03 00:13:16 tv Exp $

COMMENT=	tools to connect your PalmOS® compatible handheld

DISTNAME=	pilot-link-0.12.3
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	pisock               9.1      # .9.2
SHARED_LIBS +=	pisync               1.1      # .0.3

CATEGORIES=	comms palm

MASTER_SITES=	http://downloads.pilot-link.org/ \
		http://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
		http://gentoo.oregonstate.edu/distfiles/

HOMEPAGE=	http://www.pilot-link.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

EXTRACT_SUFX=	.tar.bz2

# GPL - LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m readline termcap z pthread

MODULES=		converters/libiconv
LIB_DEPENDS=		png.>=4::graphics/png \
			popt::devel/popt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
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
