# $OpenBSD: Makefile,v 1.1.1.1 2003/01/31 18:27:45 todd Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
COMMENT-convert=	"conversion utility for glade files"
V=			2.0.1
DISTNAME=		libglade-${V}
PKGNAME=		libglade2-${V}
PKGNAME-convert=	libglade2-convert-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/2.0/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext
LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			xml2.6::textproc/libxml

PSEUDO_FLAVORS=		no_python
# Python doesn't work on Alpha... so work around it
.if ${MACHINE_ARCH} == "alpha"
FLAVOR?=no_python
.else
FLAVOR?=
.endif

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_python}
MULTI_PACKAGES+=	-convert
BUILD_DEPENDS=		:python-expat-2.2*:lang/python/2.2,-expat
.endif
SUBPACKAGE?=

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-convert"
RUN_DEPENDS=		:python-expat-2.2*:lang/python/2.2,-expat
. endif
.endif

.include <bsd.port.mk>
