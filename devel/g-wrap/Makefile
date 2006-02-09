# $OpenBSD: Makefile,v 1.6 2006/02/09 07:35:59 steven Exp $

COMMENT=	"provides scheme wrappers"
DISTNAME=	g-wrap-1.3.4
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	gw-glib		0.0 \
		gw-standard	0.0 \
		gw-wct		0.0 \
		gwrap-glib	1.0 \
		gwrap-wct	1.0

CATEGORIES=	x11/gnome databases
MASTER_SITES=	${HOMEPAGE}/source/

HOMEPAGE=	http://www.gnucash.org/pub/g-wrap

MAINTAINER=	Todd T. Fries <todd@OpenBSD.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m

LIB_DEPENDS=		guile.9,guile-ltdl.1::lang/guile \
			glib.1.2::devel/glib
BUILD_DEPENDS=		slib::devel/slib

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-modules-dir=${LOCALBASE}/share/guile

FAKE_FLAGS += prefix="${LOCALBASE}"


.include <bsd.port.mk>
