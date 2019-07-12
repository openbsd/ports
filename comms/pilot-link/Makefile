# $OpenBSD: Makefile,v 1.85 2019/07/12 20:43:48 sthen Exp $

COMMENT=	tools to connect your PalmOS(R) compatible handheld

DISTNAME=	pilot-link-0.12.5
REVISION=	12

SHARED_LIBS +=  pisock               11.0     # 9.2
SHARED_LIBS +=  pisync               2.0      # 1.3

CATEGORIES=	comms

MASTER_SITES=	http://downloads.pilot-link.org/ \
		http://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
		http://gentoo.oregonstate.edu/distfiles/

HOMEPAGE=	http://www.pilot-link.org/

EXTRACT_SUFX=	.tar.bz2

# GPLv2 - LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv intl m perl png popt pthread readline z

# uses perl ABI

LIB_DEPENDS=		graphics/png \
			devel/popt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.65
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_lib_png_main=yes
CONFIGURE_ARGS+=	--with-libiconv=${LOCALBASE} \
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
	rm ${WRKSRC}/bindings/Perl/Pilot.xs.orig

pre-configure:
	sed -i "s,!!CFLAGS!!,${CFLAGS},g" ${WRKSRC}/bindings/Perl/Makefile.PL.in
	sed -i "s,Libs: ,Libs: -pthread ,g" \
		${WRKSRC}/pilot-link.pc.in ${WRKSRC}/pilot-link-pp.pc.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pilot-link
	${INSTALL_DATA} ${WRKSRC}/doc/README.debugging ${PREFIX}/share/doc/pilot-link
	${INSTALL_DATA} ${WRKSRC}/doc/README.usb ${PREFIX}/share/doc/pilot-link
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.7 ${PREFIX}/man/man7
	rm -rf ${PREFIX}/share/pilot-link/udev/

.include <bsd.port.mk>
