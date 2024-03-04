COMMENT =	console based password storing application

GH_ACCOUNT =	levaidaniel
GH_PROJECT =	kc
GH_TAGNAME =	2.5.3

CATEGORIES =	security

MAINTAINER =	LEVAI Daniel <leva@ecentrum.hu>

# BSD
PERMIT_PACKAGE =		Yes

WANTLIB += c crypto curses edit scrypt util xml2

LIB_DEPENDS =	textproc/libxml \
		security/libscrypt

MAKE_ENV +=	OS_OPENBSD=yes HAVE_LIBSCRYPT=yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kc
	${INSTALL} ${WRKBUILD}/Changelog.md ${PREFIX}/share/doc/kc/

.include <bsd.port.mk>
