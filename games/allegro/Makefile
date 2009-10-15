# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 14:38:05 phessler Exp $

COMMENT =	game programming library for C/C++ developers

SHARED_ONLY =	Yes

V =		4.2.3
DISTNAME =	allegro-$V
CATEGORIES =	games devel multimedia
SHARED_LIBS =	alleg	0.0	# 4.2

HOMEPAGE =	http://alleg.sourceforge.net/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=alleg/}

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =		Yes

MAKE_FILE =		makefile
ALL_TARGET =		default

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.61

SUBST_VARS =		V

WANTLIB =		X11 Xcursor Xext Xpm Xxf86dga Xxf86vm c ossaudio m \
			pthread

CONFIGURE_ARGS =	--enable-artsdigi=no \
			--enable-esddigi=no \
			--enable-jackdigi=no \
			--enable-ossmidi=no \
			--with-x
CONFIGURE_ENV =		MAKE=${MAKE_PROGRAM}
MAKE_ENV +=		shared_major_minor=${LIBalleg_VERSION}

NO_REGRESS =		Yes

post-install:
	cd ${WRKSRC} && ${MAKE_PROGRAM} install-man
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/allegro
	rm -f ${WRKSRC}/docs/html/build/tmpfile.txt
	cd ${WRKSRC}/docs/html && pax -rw . ${PREFIX}/share/doc/allegro

.include <bsd.port.mk>
