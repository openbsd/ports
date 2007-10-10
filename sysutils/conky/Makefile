# $OpenBSD: Makefile,v 1.1.1.1 2007/10/10 21:20:23 jasper Exp $

COMMENT=		light-weight system monitor

DISTNAME=		conky-1.4.7
CATEGORIES=		sysutils
HOMEPAGE=		http://conky.sourceforge.net/

MAINTAINER=		Vlad Glagolev <stelzy@gmail.com>

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=conky/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xdamage Xdmcp Xext Xfixes Xft Xrender c crypto \
		expat fontconfig freetype kvm m ossaudio pthread ssl z

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0::devel/glib2 \
			curl,idn::net/curl \
			xml2::textproc/libxml

USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-mpd \
			--enable-rss \
			--disable-portmon
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/conky
	${INSTALL_DATA} ${WRKSRC}/doc/conkyrc.sample \
		${PREFIX}/share/examples/conky
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/conky

.include <bsd.port.mk>
