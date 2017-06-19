# $OpenBSD: Makefile,v 1.11 2017/06/19 21:02:11 sebastia Exp $

COMMENT =		LDAP authentication plugin for OpenVPN 2.x

VERSION =		2.0.3
REVISION =		5
DISTNAME =		auth-ldap-${VERSION}
PKGNAME =		openvpn-${DISTNAME}
CATEGORIES =		net security

HOMEPAGE =		https://github.com/threerings/openvpn-auth-ldap

MAINTAINER =		Joel Sing <jsing@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB =		lber ldap 

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=openvpn-auth-ldap/}

RUN_DEPENDS =		net/openvpn
LIB_DEPENDS =		databases/openldap
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/check \
			devel/re2c

SEPARATE_BUILD =	Yes

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
MAKE_FILE =		Makefile

CONFIGURE_ARGS += --prefix=${LOCALBASE} \
		  --with-check=${LOCALBASE} \
		  --with-openldap=${LOCALBASE} \
		  --with-openvpn=${LOCALBASE}/include/openvpn

#TEST_TARGET =		test

SAMPLES_DIR =		${PREFIX}/share/examples/openvpn-auth-ldap

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/auth-ldap.conf ${SAMPLES_DIR}/auth-ldap.conf

do-test:
	cd ${WRKBUILD}/tests && ${MAKE} test

.include <bsd.port.mk>
