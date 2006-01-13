# $OpenBSD: Makefile,v 1.44 2006/01/13 19:12:15 espie Exp $
# $NetBSD: Makefile,v 1.37 2004/10/03 00:13:16 tv Exp $

COMMENT=	"tools to connect your PalmOS® compatible handheld"

DISTNAME=	pilot-link-0.11.8
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		pisock++	1.0 \
			pisock		8.5 \
			pisync 		0.1

CATEGORIES=	comms
MASTER_SITES=	http://gentoo.oregonstate.edu/distfiles/ \
		http://www.slackware.at/data/slackware-10.2/source/l/pilot-link/ \
		http://ftp.belnet.be/mirror/rsync.gentoo.org/gentoo/distfiles/ \
		http://downloads.pilot-link.org/

HOMEPAGE=	http://www.pilot-link.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses readline stdc++ z

MODULES=		converters/libiconv
LIB_DEPENDS=		png.4::graphics/png

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
			--without-efence \
			--without-java \
			--without-python \
			--without-tcl

pre-configure:
	@if pkg dependencies check pilot-link-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "+-------------------"; \
			echo 1>&2 "| Error: you must remove the existing pilot-link installation"; \
			echo 1>&2 "| before compiling this version. To fully remove run"; \
			echo 1>&2 "| these commands as user root"; \
			echo 1>&2 "|"; \
			echo 1>&2 "|      pkg_delete `pkg_info -e 'pilot-link-*'`"; \
			echo 1>&2 "|"; \
			echo 1>&2 "+-------------------"; \
			exit 1; \
		fi; \
	fi

.include <bsd.port.mk>
