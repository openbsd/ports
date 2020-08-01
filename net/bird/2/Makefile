# $OpenBSD: Makefile,v 1.7 2020/08/01 11:20:57 sthen Exp $

DISTNAME=	bird-2.0.7
REVISION=	0

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
