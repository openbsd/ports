# $OpenBSD: Makefile,v 1.8 2001/10/25 01:58:55 brad Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
V=			0.16
DISTNAME=		libglade-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.474
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/libglade

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                        patch-*

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		gnome
FLAVOR?=

MODULES=		gettext
LIB_DEPENDS=		xml.9::textproc/libxml1 \
			gtk.1.2,gdk.1.2::x11/gtk+

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs
CONFIGURE_ARGS+=	--with-gnome
.else
CONFIGURE_ARGS+=	--without-gnome
.endif

.include <bsd.port.mk>

# From PostgreSQL port Makefile.
.if ${FLAVOR:L:Mgnome} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-gnome%%/r${PKGDIR}/PFRAG.gnome.shared' -e '//d'
.elif ${FLAVOR:L:Mgnome} && defined(NO_SHARED_LIBS) && \
        ${NO_SHARED_LIBS:L} == "yes"
SED_PLIST+=-e '/%%SHARED-gnome%%/d'
.endif
