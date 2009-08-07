# $OpenBSD: Makefile,v 1.17 2009/08/07 11:53:40 jasper Exp $

COMMENT=	ORBit2 Python bindings

GNOME_VERSION=	2.24.0
GNOME_PROJECT=	pyorbit
PKGNAME=	py-orbit-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://www.pygtk.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	m util IDL-2 pcre glib-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0

MODULES=	devel/gettext \
		lang/python \
		x11/gnome

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		ORBit-2,ORBit-imodule-2::devel/ORBit2

USE_GMAKE=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-pthread -lm -lutil"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static

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
