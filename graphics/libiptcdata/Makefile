# $OpenBSD: Makefile,v 1.1.1.1 2013/01/27 14:51:15 kirby Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

cWANTLIB =		m util pthread
WANTLIB-main = 		${cWANTLIB} ${MODGETTEXT_WANTLIB} c
WANTLIB-python = 	${cWANTLIB} iptcdata

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libiptcdata/}

MODULES =		devel/gettext lang/python
LIB_DEPENDS-python = 	graphics/libiptcdata,-main

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-python
CONFIGURE_ENV += 	PYTHON_VERSION=${MODPY_VERSION} \
			LDFLAGS="-L${LOCALBASE}/lib -pthread -lm -lutil"

MULTI_PACKAGES = 	-main -python

NO_REGRESS =		Yes

.include <bsd.port.mk>
