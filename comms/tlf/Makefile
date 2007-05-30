# $OpenBSD: Makefile,v 1.3 2007/05/30 21:54:17 jason Exp $

COMMENT=	"radio contest logger"

DISTNAME=	tlf-0.9.30
PKGNAME=	$(DISTNAME)p0
CATEGORIES=	comms hamradio

HOMEPAGE=	http://home.iae.nl/users/reinc/TLF-0.2.html

MASTER_SITES=	http://sharon.esrac.ele.tue.nl/pub/linux/ham/tlf/ \
		http://www.wwns.com/tlf/

CONFIGURE_STYLE=autoheader gnu
WANTLIB=	ncurses pthread ossaudio c m

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SOME_LD_FLAGS=-lossaudio
SOME_CPP_FLAGS=

AUTOCONF_VER=	2.59
AUTOMAKE_VER=	1.9

BUILD_DEPENDS=	::devel/automake/${AUTOMAKE_VER} \
		::devel/autoconf/${AUTOCONF_VER}


CONFIGURE_ARGS+=--enable-hamlib
LIB_DEPENDS=	hamlib.>=2::comms/hamlib
SOME_CPP_FLAGS	+= -I${LOCALBASE}/include
SOME_LD_FLAGS	+= -L${LOCALBASE}/lib

CONFIGURE_ENV=	CPPFLAGS="${SOME_CPP_FLAGS}" \
		LDFLAGS="${SOME_LD_FLAGS}" \
		AUTOMAKE_VERSION=${AUTOMAKE_VER} \
		AUTOCONF_VERSION=${AUTOCONF_VER}

pre-configure:
	cd $(WRKSRC) && env AUTOCONF_VERSION=$(AUTOCONF_VER) \
	    AUTOMAKE_VERSION=$(AUTOMAKE_VER) aclocal
	cd $(WRKSRC) && env AUTOCONF_VERSION=$(AUTOCONF_VER) \
	    AUTOMAKE_VERSION=$(AUTOMAKE_VER) automake --add-missing
	cd $(WRKSRC) && env AUTOCONF_VERSION=$(AUTOCONF_VER) \
	    AUTOMAKE_VERSION=$(AUTOMAKE_VER) autoconf
	cd $(WRKSRC) && env AUTOCONF_VERSION=$(AUTOCONF_VER) \
	    AUTOMAKE_VERSION=$(AUTOMAKE_VER) autoheader

.include <bsd.port.mk>
