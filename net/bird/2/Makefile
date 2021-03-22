# $OpenBSD: Makefile,v 1.9 2021/03/22 17:06:52 sthen Exp $

DISTNAME=	bird-2.0.8

WANTLIB=	c curses pthread readline ssh

LIB_DEPENDS=	security/libssh

MAKE_FLAGS=	VERBOSE=1
CFLAGS+=	-I${LOCALBASE}/include
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --enable-pthreads \
		--enable-ssh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bird
	${INSTALL_DATA} ${WRKDIR}/bird-doc-*/doc/* ${PREFIX}/share/doc/bird/
	${INSTALL_DATA} ${WRKSRC}/doc/bird.conf.example2 ${PREFIX}/share/examples/bird/

.include <bsd.port.mk>
