COMMENT =		minimalistic Mumble server

GH_ACCOUNT =		umurmur
GH_PROJECT =		umurmur
GH_TAGNAME =		v0.3.1

CATEGORIES =		audio

HOMEPAGE =		https://umurmur.net/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c config crypto protobuf-c>=1.0 ssl

MODULES =		devel/cmake

LIB_DEPENDS =		devel/libconfig \
			devel/protobuf-c>=1.0.1

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/conf.c ${WRKSRC}/src/config.h.in \
		${WRKSRC}/umurmur.conf.example

post-install:
	${INSTALL_MAN} ${FILESDIR}/umurmurd.8 \
		${PREFIX}/man/man8/
	${SUBST_MAN} ${FILESDIR}/umurmur.conf.5 \
		${PREFIX}/man/man5/umurmur.conf.5

.include <bsd.port.mk>
