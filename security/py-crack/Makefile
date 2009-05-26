# $OpenBSD: Makefile,v 1.1.1.1 2009/05/26 08:13:04 benoit Exp $

COMMENT =		Python bindings for cracklib

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		python-crack-${MODPY_EGG_VERSION}
PKGNAME =		py-crack-${MODPY_EGG_VERSION}
CATEGORIES =   		security devel

HOMEPAGE =		http://www.nongnu.org/python-crack/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# MIT/X Consortium License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/python-crack/

MODULES =		lang/python
LIB_DEPENDS =		crack::security/cracklib

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_STYLE =       autoconf no-autoheader
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			DEFAULT_DICTPATH="${LOCALBASE}/share/cracklib/cracklib-small"

AUTOCONF_VERSION =	2.59
 
post-install:
			find ${WRKINST} -name \*.egg-info -exec rm {} \;

NO_REGRESS =		Yes

.include <bsd.port.mk>
