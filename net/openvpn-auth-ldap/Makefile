# $OpenBSD: Makefile,v 1.25 2020/08/16 20:37:45 sebastia Exp $

COMMENT =		LDAP authentication plugin for OpenVPN 2.x

VERSION =		2.0.3
REVISION =		14
DISTNAME =		auth-ldap-${VERSION}
PKGNAME =		openvpn-${DISTNAME}
CATEGORIES =		net security

HOMEPAGE =		https://github.com/threerings/openvpn-auth-ldap

# BSD
PERMIT_PACKAGE =	Yes

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

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
LDFLAGS += -lc++abi -lpthread
.endif

CONFIGURE_ARGS =  --with-check=${LOCALBASE} \
		  --with-openldap=${LOCALBASE} \
		  --with-openvpn=${LOCALBASE}/include/openvpn \
		  CC="${CC}" \
		  LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}" \
		  LD="${CC}" CXX=${CXX} OBJCPP="${CC} -E" OBJC=${CC}

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
			    -I${LOCALBASE}/include/gnustep"

SAMPLES_DIR =		${PREFIX}/share/examples/openvpn-auth-ldap

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/auth-ldap.conf ${SAMPLES_DIR}/auth-ldap.conf

do-test:
	cd ${WRKBUILD}/tests && ${MAKE} test

.include <bsd.port.mk>
