COMMENT =	network switch style shell

CATEGORIES =	shells net
HOMEPAGE =	https://www.nmedia.net/nsh/
V =		1.2.2
DISTNAME =	nsh-${V}
SITES =		https://github.com/yellowman/nsh/releases/download/v${V}/

MAINTAINER =	Tom Smyth <tom.smyth@wirelessconnect.eu>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c curses edit sqlite3 util

FLAVORS =	static
FLAVOR ?=

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

CPPFLAGS =	-I${LOCALBASE}/include \
		-DNSH_REXEC_PATH=${LOCALBASE}/bin/nsh

MAKE_ENV =	CC="${CC}" \
		CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"
LIB_DEPENDS =	databases/sqlite3

FAKE_FLAGS =	DESTDIR=

.if ${FLAVOR:Mstatic}
ALL_TARGET =	static
.endif

NO_TEST=	Yes

post-install:
.for i in save-ro.sh save-rw.sh
	${INSTALL_SCRIPT} ${WRKDIST}/${i} ${PREFIX}/bin
.endfor
	rm ${PREFIX}/bin/save.sh
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nsh
.for i in README.md COPYRIGHT
	${INSTALL_DATA} ${WRKDIST}/${i} ${PREFIX}/share/doc/nsh/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nsh/shell
.for s in extensive-nsh-openbsd-integrate.sh rc.local-nsh-openbsd-integrate.sh
	${INSTALL_DATA} ${WRKDIST}/scripts/shell/${s} \
		${PREFIX}/share/examples/nsh/shell
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nsh/nshrc
.for s in enable-sshd.nshrc write-config.nshrc initial-config.nshrc
	${INSTALL_DATA} ${WRKDIST}/scripts/nshrc/${s} \
		${PREFIX}/share/examples/nsh/nshrc
.endfor

.include <bsd.port.mk>
