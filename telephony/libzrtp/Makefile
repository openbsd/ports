# $OpenBSD: Makefile,v 1.12 2017/06/28 10:26:44 czarkoff Exp $

COMMENT =		ZRTP library

DISTNAME =		libzrtp-0.20170619
CATEGORIES =		telephony security

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		juha-h
GH_PROJECT =		libzrtp
GH_COMMIT =		0be89abc3adb3d62794205e06acda10103730e17

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-docs
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9
.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
MAKE_FLAGS += GCCMAGIC2=-lcompiler_rt
.endif

pre-configure:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			 AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			 ./bootstrap.sh

.include <bsd.port.mk>
