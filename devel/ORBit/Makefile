# $OpenBSD: Makefile,v 1.22 2000/09/24 01:23:43 brad Exp $

DISTNAME=	ORBit-0.5.3
CATEGORIES=	devel
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/ORBit

HOMEPAGE=	http://www.labs.redhat.com/orbit/

LIB_DEPENDS=	intl.1::devel/gettext \
		glib.1.2::devel/glib

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-indent
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/orbit
	${INSTALL_DATA} ${FILESDIR}/orbitrc-sample ${PREFIX}/share/examples/orbit

.include <bsd.port.mk>
