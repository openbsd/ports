# $OpenBSD: Makefile,v 1.10 2002/05/13 18:50:39 espie Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
V=			0.17
DISTNAME=		libglade-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.497
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/libglade/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		gnome
FLAVOR?=

MODULES=		gettext
LIB_DEPENDS=		xml.9::textproc/libxml1 \
			gtk.1.2,gdk.1.2::x11/gtk+

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--disable-gnomedb
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs
CONFIGURE_ARGS+=	--with-gnome
.else
CONFIGURE_ARGS+=	--without-gnome
.endif

.include <bsd.port.mk>

.if ${FLAVOR:L:Mgnome} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-gnome%%/r${PKGDIR}/PFRAG.gnome.shared' -e '//d'
.elif ${FLAVOR:L:Mgnome}
SED_PLIST+=-e '/%%SHARED-gnome%%/d'
.endif
