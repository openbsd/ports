# $OpenBSD: Makefile,v 1.8 2008/09/30 09:54:19 landry Exp $

# we use "macppc" and not "powerpc" on purpose here ; i.e. apm(4) needed
ONLY_FOR_ARCHS= amd64 arm i386 macppc sparc sparc64

COMMENT=	light-weight system monitor

DISTNAME=	conky-1.6.1

CATEGORIES=	sysutils
HOMEPAGE=	http://conky.sourceforge.net/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=conky/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdamage Xdmcp Xext Xfixes Xft Xrender c crypto \
		expat fontconfig freetype kvm m ossaudio pthread ssl z

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0::devel/glib2 \
		pcre::devel/pcre \
		curl,idn::net/curl \
		xml2::textproc/libxml

USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-mpd \
		--enable-rss \
		--disable-portmon

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/conky

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/conky

.include <bsd.port.mk>
