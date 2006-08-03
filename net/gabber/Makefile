# $OpenBSD: Makefile,v 1.12 2006/08/03 23:55:10 espie Exp $
# $RuOBSD: Makefile,v 1.9 2002/10/28 16:01:41 grange Exp $

COMMENT=		"GNOME jabber client"

DISTNAME=		gabber-0.8.7
PKGNAME=		${DISTNAME}p2
CATEGORIES=		net x11/gnome

HOMEPAGE=		http://gabber.sourceforge.net/

MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		audiofile esd gdk gdk_imlib gdk_pixbuf gdkmm glib \
			gmodule gnome stdc++ tiff z gnomesupport gnomeui \
			gtk gtkmm iconv intl jpeg ungif xml ICE SM X11 Xext \
			Xi Xss art_lgpl c crypto freetype m png pthread ssl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gabber/}

LIB_DEPENDS=		sigc:libsigc++-1.*:devel/libsigc++ gal.>=19::devel/gal \
			gnomemm.>=9::x11/gnomemm \
			glade.>=5,glade-gnome.>=5:libglade-*-gnome:devel/libglade,gnome \
			gnomeprint.>=16::x11/gnome/print \
			gnomecanvaspixbuf.>=1::graphics/gdk-pixbuf,-gnome

RUN_DEPENDS=		:gnupg-*:security/gnupg \
			:scrollkeeper->=0.1.12:textproc/scrollkeeper

BUILD_DEPENDS=		${RUN_DEPENDS}

USE_LIBTOOL=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ipv6

NO_REGRESS=		Yes

FLAVORS=		xmms
FLAVOR?=

.if ${FLAVOR:L:Mxmms}
LIB_DEPENDS+=		xmms.>=3::audio/xmms
.else
CONFIGURE_ARGS+=	--disable-xmms
.endif

.include <bsd.port.mk>
