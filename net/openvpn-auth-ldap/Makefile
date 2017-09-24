# $OpenBSD: Makefile,v 1.17 2017/09/24 10:44:56 sthen Exp $

COMMENT =		LDAP authentication plugin for OpenVPN 2.x

VERSION =		2.0.3
REVISION =		8
DISTNAME =		auth-ldap-${VERSION}
PKGNAME =		openvpn-${DISTNAME}
CATEGORIES =		net security

HOMEPAGE =		https://github.com/threerings/openvpn-auth-ldap

# BSD
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB =		${COMPILER_LIBCXX} lber ldap 

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No

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

CONFIGURE_ARGS =  --with-check=${LOCALBASE} \
		  --with-openldap=${LOCALBASE} \
		  --with-openvpn=${LOCALBASE}/include/openvpn

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

SAMPLES_DIR =		${PREFIX}/share/examples/openvpn-auth-ldap

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/auth-ldap.conf ${SAMPLES_DIR}/auth-ldap.conf

do-test:
	cd ${WRKBUILD}/tests && ${MAKE} test

.include <bsd.port.mk>
