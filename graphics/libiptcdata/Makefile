# $OpenBSD: Makefile,v 1.3 2013/03/21 08:45:18 ajacoutot Exp $

SHARED_ONLY = 		Yes

COMMENT-main =		manipulating with IPTC metadata
COMMENT-python =	libiptcdata Python bindings

DISTNAME =		libiptcdata-1.0.4
PKGNAME-main =		${DISTNAME}
PKGNAME-python =	py-${DISTNAME}

SHARED_LIBS =		iptcdata 	0.0 # 3.3

CATEGORIES =		graphics

HOMEPAGE =		http://libiptcdata.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

cWANTLIB =		m util pthread
WANTLIB-main = 		${cWANTLIB} ${MODGETTEXT_WANTLIB} c
WANTLIB-python = 	${cWANTLIB} iptcdata

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libiptcdata/}

MODULES =		devel/gettext lang/python
LIB_DEPENDS-python = 	graphics/libiptcdata,-main

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-python
CONFIGURE_ENV += 	PYTHON_VERSION=${MODPY_VERSION} \
			LDFLAGS="-L${LOCALBASE}/lib -pthread -lm -lutil"

MULTI_PACKAGES = 	-main -python

NO_TEST =		Yes

.include <bsd.port.mk>
