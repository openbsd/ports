# $OpenBSD: Makefile,v 1.13 2002/12/03 22:45:33 pvalchev Exp $

COMMENT=		"library for loading GLADE interface files at runtime"

DISTNAME=		libglade-0.17
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/0.17/}

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
