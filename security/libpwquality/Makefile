# $OpenBSD: Makefile,v 1.2 2012/06/13 15:26:16 jasper Exp $

COMMENT =	library to generate, and check strenght of passwords

DISTNAME =	libpwquality-1.1.1
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

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-python-rev=${MODPY_VERSION} \
			--with-sconfigdir=${SYSCONFDIR} \
			--disable-pam
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		secureconfdir=${PREFIX}/share/examples/libpwquality/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/python/Makefile.in

.include <bsd.port.mk>
