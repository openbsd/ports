# $OpenBSD: Makefile,v 1.1.1.1 2012/06/13 15:13:09 jasper Exp $

COMMENT =	library to generate, and check strenght of passwords

DISTNAME =	libpwquality-1.1.0
SHARED_LIBS +=  pwquality                 0.0 # 0.0
CATEGORIES =	security

HOMEPAGE =	https://fedorahosted.org/libpwquality/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		https://fedorahosted.org/releases/l/i/libpwquality/
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		c crack z ${MODPY_WANTLIB}

MODULES =		devel/gettext \
			lang/python

LIB_DEPENDS =		security/cracklib

USE_LIBTOOL =		Yes

AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.68

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS +=	--with-python-rev=${MODPY_VERSION} \
			--with-sconfigdir=${SYSCONFDIR} \
			--disable-pam
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		secureconfdir=${PREFIX}/share/examples/libpwquality/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/python/Makefile.am
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=2.68 \
		AUTOMAKE_VERSION=1.11 \
		autoreconf

.include <bsd.port.mk>
