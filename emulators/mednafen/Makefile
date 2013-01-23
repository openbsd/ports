# $OpenBSD: Makefile,v 1.7 2013/01/23 21:36:06 benoit Exp $

COMMENT =	emulates numerous game consoles

V =		0.9.28
DISTNAME =	mednafen-${V}-wip
PKGNAME =	mednafen-${V}

CATEGORIES =	emulators games
HOMEPAGE =	http://mednafen.sourceforge.net/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mednafen/}
EXTRACT_SUFX =	.tar.bz2

MODULES =	devel/gettext

WANTLIB += SDL c cdio m pthread sndfile sndio stdc++ usbhid z

USE_GMAKE =	Yes

LIB_DEPENDS =	audio/libcdio \
		audio/libsndfile \
		devel/sdl
		
WRKDIST =	${WRKDIR}/mednafen

VMEM_WARNING =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/SDL" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS =	--disable-alsa \
			--disable-rpath \
			--disable-jack \
			--with-x \
			--with-gnu-ld

# this intrinsic is not supported with our old gcc
CONFIGURE_ARGS +=	--disable-altivec

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mednafen
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/doc/mednafen/

.include <bsd.port.mk>
