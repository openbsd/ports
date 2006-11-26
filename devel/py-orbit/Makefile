# $OpenBSD: Makefile,v 1.2 2006/11/26 13:39:07 ajacoutot Exp $

COMMENT=	"ORBit2 Python bindings"

DISTNAME=	pyorbit-2.14.1
PKGNAME=	${DISTNAME:S/py/py-/}p0
CATEGORIES=	devel

HOMEPAGE=	http://www.pygtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/${DISTNAME:S/-/\//:R}/}

WANTLIB=	m util IDL-2 glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 popt

MODULES=	devel/gettext lang/python
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	python${MODPY_VERSION}:python-${MODPY_VERSION}*:lang/python/${MODPY_VERSION} \
		ORBit-2,ORBit-imodule-2::devel/ORBit2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-pthread -lm -lutil" \
		PYTHON=${MODPY_BIN}
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

.include <bsd.port.mk>
