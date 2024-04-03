COMMENT =	console based password storing application

GH_ACCOUNT =	levaidaniel
GH_PROJECT =	kc
GH_TAGNAME =	2.5.3
REVISION =	0

CATEGORIES =	security

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE =		Yes

FLAVORS=		yubikey
FLAVOR?=

WANTLIB += c crypto curses edit scrypt util xml2

LIB_DEPENDS =	textproc/libxml \
		security/libscrypt

MAKE_ENV +=	OS_OPENBSD=yes HAVE_LIBSCRYPT=yes

.if ${FLAVOR:Myubikey}
WANTLIB += ykpers-1 yubikey

LIB_DEPENDS +=	security/yubico/yubikey-personalization \
		security/yubico/yubico-c

MAKE_ENV +=	HAVE_YUBIKEY=yes
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kc
	${INSTALL} ${WRKBUILD}/Changelog.md ${PREFIX}/share/doc/kc/

.include <bsd.port.mk>
