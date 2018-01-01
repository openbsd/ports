# $OpenBSD: Makefile,v 1.1.1.1 2018/01/01 15:40:55 bcallah Exp $

COMMENT =	library providing BLAKE2b, BLAKE2s, BLAKE2bp, BLAKE2sp
DISTNAME =	libb2-0.98.20171225
CATEGORIES =	security

SHARED_LIBS +=	b2                        0.0 # 1.3

# No GH_TAGNAME
GH_ACCOUNT =	BLAKE2
GH_PROJECT =	libb2
GH_COMMIT =	60ea749837362c226e8501718f505ab138e5c19d

MAINTAINER =	Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# CC0
PERMIT_PACKAGE_CDROM =	Yes

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-fat \
			--disable-native \
			--disable-openmp

SEPARATE_BUILD =	Yes

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
