COMMENT =	SSH tarpit that slowly sends an endless banner

GH_ACCOUNT =	skeeto
GH_PROJECT =	endlessh
GH_COMMIT =	dfe44eb2c5b6fc3c48a39ed826fe0e4459cdf6ef

V =		1.1pre20210430
DISTNAME =	endlessh-$V
REVISION =	1
CATEGORIES =	net security

MAINTAINER =	Michael <michi+openbsd@dataswamp.org>

# Public Domain / UNLICENSE
PERMIT_PACKAGE = Yes

# uses pledge() and unveil()
WANTLIB = 	c

MAKE_FLAGS =	CFLAGS="${CFLAGS}" LDFLAGS=""

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/endlessh
	${INSTALL_DATA} ${WRKSRC}/util/smf/endlessh.conf \
		${PREFIX}/share/examples/endlessh/config
	perl -pi -e 's,Port 22,Port 2222,;s,BindFamily 0,BindFamily 4,' \
		${PREFIX}/share/examples/endlessh/config

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
