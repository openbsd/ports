# $OpenBSD: Makefile,v 1.10 2004/10/08 08:22:29 xsa Exp $

CATEGORIES=	x11

COMMENT=	"GUI for ogle"
DISTNAME=	ogle_gui-0.9.2
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

LIB_DEPENDS=	dvdcontrol.9,msgevents.6::x11/ogle \
		xml2::textproc/libxml \

FLAVORS=gtk1
FLAVOR?=

.if ${FLAVOR:L} == "gtk1"
LIB_DEPENDS+= 	glade.5.0::devel/libglade \
		gtk.1.2::x11/gtk+
.else
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS+=	glade-2.0.0.0::devel/libglade2 \
		gtk-x11-2.0.0.0::x11/gtk+2
CONFIGURE_ARGS+=--enable-gtk2
.endif

MODULES=	devel/gettext

CONFIGURE_ENV+= CFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include -L${LOCALBASE}/lib" \
		LDFLAGS="-pthread"

.include <bsd.port.mk>
