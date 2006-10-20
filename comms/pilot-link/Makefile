# $OpenBSD: Makefile,v 1.47 2006/10/20 11:48:06 ajacoutot Exp $
# $NetBSD: Makefile,v 1.37 2004/10/03 00:13:16 tv Exp $

COMMENT=	"tools to connect your PalmOS® compatible handheld"

DISTNAME=	pilot-link-0.12.1
SHARED_LIBS=	pisock		9.0 \
		pisync 		1.0

CATEGORIES=	comms
MASTER_SITES=	http://downloads.pilot-link.org/ \
		http://www.slackware.at/data/slackware-10.2/source/l/pilot-link/ \
		http://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
		http://gentoo.oregonstate.edu/distfiles/

HOMEPAGE=	http://www.pilot-link.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m readline termcap z

MODULES=		converters/libiconv
LIB_DEPENDS=		png.>=4::graphics/png \
			popt::devel/popt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_lib_png_main=yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-libiconv=${LOCALBASE} \
			--with-libpng=${LOCALBASE} \
			--with-perl=/usr/bin/perl \
			--with-readline \
			--enable-conduits \
			--without-efence \
			--without-java \
			--without-python \
			--without-tcl

pre-configure:
	@if pkg_info -e 'pilot-link-0.11.*'; then \
		echo 1>&2 "+-------------------"; \
		echo 1>&2 "| Error: you must remove the existing pilot-link installation"; \
		echo 1>&2 "| before compiling this version. To fully remove run"; \
		echo 1>&2 "| these commands as user root"; \
		echo 1>&2 "|"; \
		echo 1>&2 "|      pkg_delete pilot-link"; \
		echo 1>&2 "|"; \
		echo 1>&2 "+-------------------"; \
		exit 1; \
	fi
	perl -pi -e "s,\@\@CFLAGS\@\@,${CFLAGS},g" ${WRKSRC}/bindings/Perl/Makefile.PL.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pilot-link
	${INSTALL_DATA} ${WRKSRC}/doc/README.debugging ${PREFIX}/share/doc/pilot-link
	${INSTALL_DATA} ${WRKSRC}/doc/README.usb ${PREFIX}/share/doc/pilot-link

.include <bsd.port.mk>
