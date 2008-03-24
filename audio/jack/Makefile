# $OpenBSD: Makefile,v 1.1.1.1 2008/03/24 03:01:28 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		low latency sound server

DISTNAME =		jack-0.109.10.1133

SHARED_LIBS +=		jack		0.0	# 0.28
SHARED_LIBS +=		jackserver	0.0	# 0.28

CATEGORIES =		audio
HOMEPAGE =		http://jackaudio.org/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread readline termcap

#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=jackit/}
# using a subversion snapshot for now
MASTER_SITES =		http://jakemsr.trancell.org/distfiles/

LIB_DEPENDS =		sndfile.>=1::audio/libsndfile \
			samplerate.>=1::audio/libsamplerate

USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-portaudio \
			--with-default-tmpdir=/tmp \
			--disable-optimize \
			--enable-dynsimd
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			HAVE_DOXYGEN="false"

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

post-patch:
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ${AUTOCONF} \
		./autogen.sh --no-conf

.include <bsd.port.mk>
