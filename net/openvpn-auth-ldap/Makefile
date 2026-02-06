COMMENT =		LDAP authentication plugin for OpenVPN 2.x

VERSION =		2.0.4
REVISION =		6
GH_ACCOUNT =		threerings
GH_PROJECT =		openvpn-auth-ldap
GH_TAGNAME =		auth-ldap-${VERSION}
PKGNAME =		openvpn-${GH_TAGNAME}
CATEGORIES =		net security

HOMEPAGE =		https://github.com/threerings/openvpn-auth-ldap

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += lber ldap objc

RUN_DEPENDS =		net/openvpn
LIB_DEPENDS =		databases/openldap
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/re2c

# using gcc for objc which is not handled in COMPILER_LANGS
# not actually using c++ but leave COMPILER_LANGS as default (c c++);
# easier to pull in gcc-libs this way
COMPILER =		ports-gcc
BUILD_DEPENDS +=	${MODGCC4_CPPLIBDEP:S/-libs/-objc/}

SEPARATE_BUILD =	Yes

AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf
MAKE_FILE =		Makefile

CFLAGS += -std=c11 -I${LOCALBASE}/include

CONFIGURE_ARGS =  --with-openldap=${LOCALBASE} \
		  --with-openvpn=${LOCALBASE}/include/openvpn \
		  --with-objc-runtime=GNU

CONFIGURE_ENV =	OBJC=gcc

TEST_TARGET =	test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/openvpn-auth-ldap
	${INSTALL_DATA} ${WRKSRC}/auth-ldap.conf \
		${PREFIX}/share/examples/openvpn-auth-ldap/

.include <bsd.port.mk>
