# $OpenBSD: Makefile,v 1.3 2005/12/30 10:46:04 steven Exp $
# Original from: Adam Skutt <LordHunter317@softhome.net>

COMMENT=		"GNOME-based plot program with statistics capabilities"
DISTNAME=		Guppi-0.40.3
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		guppi		16.0	\
			guppitank	16.0
MODGNU_SHARED_LIBS=	guppi		''
CATEGORIES=		graphics
HOMEPAGE=		http://www.gnome.org/projects/guppi/
MAINTAINER=		Todd T. Fries <todd@openbsd.org>

#GNU
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/Guppi/0.40/}

LIB_DEPENDS=	bonobo.2,bonobox,bonobo-print::x11/gnome/bonobo \
		oaf.1::x11/gnome/oaf \
		ORBit.5,IIOP,ORBitCosNaming,ORBitutil::devel/ORBit \
		gnomeprint.16::x11/gnome/print \
		gnomeui.46,gnome.36,gnomesupport.0,art_lgpl.4,zvt::x11/gnome/libs \
		glade.5.0,glade-gnome.5.0:libglade-*-gnome:devel/libglade,gnome \
		gdk_imlib.19::graphics/imlib \
		ungif.5::graphics/libungif \
		esd.2::audio/esound \
		audiofile.0::devel/libaudiofile \
		gdk_pixbuf.2::graphics/gdk-pixbuf \
		glib.1.2,gmodule.1.2::devel/glib \
		xml.9::textproc/libxml1 \
		popt.0::devel/popt \

SEPARATE_BUILD=		simple

USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
				--disable-gnumeric

.include <bsd.port.mk>
