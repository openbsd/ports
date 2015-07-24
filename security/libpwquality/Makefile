# $OpenBSD: Makefile,v 1.9 2015/07/24 06:18:21 ajacoutot Exp $

COMMENT =		library to generate, and check strenght of passwords

DISTNAME =		libpwquality-1.3.0
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS +=  pwquality            1.0      # 1.2

CATEGORIES =		security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE =		https://fedorahosted.org/libpwquality/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crack pthread ${MODPY_WANTLIB} z

MASTER_SITES =		https://fedorahosted.org/releases/l/i/libpwquality/

MODULES =		devel/gettext \
			lang/python

LIB_DEPENDS =		security/cracklib

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-python-binary=python${MODPY_VERSION} \
			--with-python-rev=${MODPY_VERSION} \
			--with-sconfigdir=${SYSCONFDIR} \
			--disable-pam
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		secureconfdir=${PREFIX}/share/examples/libpwquality/

.include <bsd.port.mk>
