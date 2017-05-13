# $OpenBSD: Makefile,v 1.7 2017/05/13 01:52:38 espie Exp $

COMMENT =		ZRTP library

DISTNAME =		libzrtp-0.20130317
REVISION =		3
CATEGORIES =		telephony security

HOMEPAGE =		https://github.com/traviscross/libzrtp

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# AGPLv3
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		traviscross
GH_PROJECT =		libzrtp
GH_COMMIT =		4cb5110147d2bb7e0466eec8ec838d8372ef54c9

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
CONFIGURE_STYLE =	gnu
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
