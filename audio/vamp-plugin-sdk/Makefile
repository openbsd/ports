# $OpenBSD: Makefile,v 1.1.1.1 2009/01/11 09:22:08 jakemsr Exp $

COMMENT =		audio plugin API

DISTNAME =		vamp-plugin-sdk-1.3

SHARED_LIBS +=		vamp-sdk	0.0
SHARED_LIBS +=		vamp-hostsdk	0.0

CATEGORIES =		audio

HOMEPAGE =		http://www.vamp-plugins.org/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vamp/}

MAKE_ENV +=		CXX=${CXX} \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBvamp-sdk_VERSION="${LIBvamp-sdk_VERSION}" \
			LIBvamp-hostsdk_VERSION="${LIBvamp-hostsdk_VERSION}"
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"

USE_GMAKE =		Yes

REGRESS_TARGET =	test

.include <bsd.port.mk>
