# $OpenBSD: Makefile,v 1.12 2009/11/23 16:46:20 benoit Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. apm(4) needed
ONLY_FOR_ARCHS= amd64 arm i386 macppc sparc sparc64

COMMENT=	light-weight system monitor

DISTNAME=	conky-1.7.2

CATEGORIES=	sysutils
HOMEPAGE=	http://conky.sourceforge.net/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=conky/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c crypto kvm m ossaudio pthread ssl z

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0::devel/glib2 \
		pcre::devel/pcre \
		curl,idn::net/curl \
		xml2::textproc/libxml \
		lua.>=5.1::lang/lua

USE_LIBTOOL=	Yes

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=--disable-double-buffer \
		--disable-x11 \
		--disable-own-window
.else
WANTLIB+=	X11 Xau Xdamage Xdmcp Xext Xfixes Xft Xrender \
		expat fontconfig freetype pthread-stubs xcb
USE_X11=	Yes
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-mpd \
		--enable-rss \
		--disable-config-output \
		--disable-portmon \
		--enable-lua \
		--enable-curl

post-install:
	#fix garbage in manpage
	@perl -pi -e 's,\\\*\(T.,,g' ${PREFIX}/man/man1/conky.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/conky

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/conky

.include <bsd.port.mk>
