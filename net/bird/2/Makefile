DISTNAME=	bird-2.15.1

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	c curses pthread readline ssh

LIB_DEPENDS=	security/libssh

MAKE_FLAGS=	VERBOSE=1
CONFIGURE_ARGS+= --enable-pthreads \
		--enable-ssh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bird
	${INSTALL_DATA} ${WRKDIR}/bird-doc-*/doc/* ${PREFIX}/share/doc/bird/
	${INSTALL_DATA} ${WRKSRC}/doc/bird.conf.example2 ${PREFIX}/share/examples/bird/

.include <bsd.port.mk>
