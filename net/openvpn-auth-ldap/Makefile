# $OpenBSD: Makefile,v 1.3 2013/03/11 11:35:50 espie Exp $

COMMENT =		LDAP authentication plugin for OpenVPN 2.x

VERSION =		2.0.3
DISTNAME =		auth-ldap-${VERSION}
PKGNAME =		openvpn-${DISTNAME}
CATEGORIES =		net security

HOMEPAGE =		http://code.google.com/p/openvpn-auth-ldap/

MAINTAINER =		Joel Sing <jsing@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB =		lber ldap objc

MASTER_SITES =		http://openvpn-auth-ldap.googlecode.com/files/

RUN_DEPENDS =		net/openvpn
LIB_DEPENDS =		databases/openldap
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/re2c

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS += --prefix=${LOCALBASE} \
		  --with-openldap=${LOCALBASE} \
		  --with-openvpn=${LOCALBASE}/include/openvpn

SAMPLES_DIR =		${PREFIX}/share/examples/openvpn-auth-ldap

post-install:
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/auth-ldap.conf ${SAMPLES_DIR}/auth-ldap.conf

.include <bsd.port.mk>
