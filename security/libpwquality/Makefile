# $OpenBSD: Makefile,v 1.5 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT =	library to generate, and check strenght of passwords

DISTNAME =	libpwquality-1.1.1
REVISION =	0
SHARED_LIBS +=  pwquality                 0.0 # 0.0
CATEGORIES =	security

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE =	https://fedorahosted.org/libpwquality/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://fedorahosted.org/releases/l/i/libpwquality/
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		c crack z ${MODPY_WANTLIB}

MODULES =		devel/gettext \
			lang/python

LIB_DEPENDS =		security/cracklib


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-python-rev=${MODPY_VERSION} \
			--with-sconfigdir=${SYSCONFDIR} \
			--disable-pam
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =		secureconfdir=${PREFIX}/share/examples/libpwquality/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/python/Makefile.in

.include <bsd.port.mk>
