# $OpenBSD: Makefile,v 1.1.1.1 2005/02/24 01:42:47 todd Exp $

COMMENT=	"g-wrap"
DISTNAME=	g-wrap-1.3.4
CATEGORIES=	gnome databases
MASTER_SITES=	${HOMEPAGE}/source/

HOMEPAGE=	http://www.gnucash.org/pub/g-wrap

MAINTAINER=	Todd T. Fries <todd@OpenBSD.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		m

LIB_DEPENDS=		guile.9::lang/guile \
			gthread.1.2::devel/glib
BUILD_DEPENDS=		slib::devel/slib

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-modules-dir=${LOCALBASE}/share/guile

FAKE_FLAGS += prefix="${LOCALBASE}"


.include <bsd.port.mk>
