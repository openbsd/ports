# $OpenBSD: Makefile,v 1.13 2014/08/10 09:58:04 espie Exp $

COMMENT =		minimalistic Mumble server

DISTNAME =		umurmur-0.2.14
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://umurmur.googlecode.com/

MASTER_SITES =		${HOMEPAGE}/files/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		c config crypto protobuf-c ssl

LIB_DEPENDS =		devel/libconfig \
			devel/protobuf-c

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--with-ssl=openssl

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/conf.c ${WRKSRC}/src/conf.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/umurmur
	${SUBST_DATA} ${WRKBUILD}/umurmur.conf.example \
		${PREFIX}/share/examples/umurmur/umurmur.conf
	${INSTALL_MAN} ${FILESDIR}/umurmurd.1 \
		${PREFIX}/man/man1/
	${SUBST_MAN} ${FILESDIR}/umurmur.conf.1 \
			${PREFIX}/man/man1/umurmur.conf.1

.include <bsd.port.mk>
