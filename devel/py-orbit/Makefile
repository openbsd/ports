# $OpenBSD: Makefile,v 1.15 2009/04/26 11:01:04 ajacoutot Exp $

COMMENT=	ORBit2 Python bindings

V=		2.14.3
DISTNAME=	pyorbit-${V}
PKGNAME=	py-orbit-${V}p3
CATEGORIES=	devel

HOMEPAGE=	http://www.pygtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/pyorbit/2.14/}

WANTLIB=	m util IDL-2 pcre glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0

MODULES=	devel/gettext \
		lang/python

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		ORBit-2,ORBit-imodule-2::devel/ORBit2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-pthread -lm -lutil"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-orbit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-orbit/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-orbit/{echo,threaded}
	${INSTALL_DATA} ${WRKSRC}/examples/echo/*.{idl,py} ${PREFIX}/share/examples/py-orbit/echo/
	${INSTALL_DATA} ${WRKSRC}/examples/threaded/*.{idl,py} ${PREFIX}/share/examples/py-orbit/threaded/

do-regress: fake
	cd ${WRKSRC}/tests && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages" ${MODPY_BIN} everything_inprocess.py -v

.include <bsd.port.mk>
