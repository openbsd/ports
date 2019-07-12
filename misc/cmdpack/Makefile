# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:48 sthen Exp $

COMMENT =		various ROM (and other) development tools

DISTNAME =		cmdpack-1.03-src
PKGNAME =		${DISTNAME:S/-src//}
REVISION =		0

CATEGORIES =		misc

HOMEPAGE =		http://www.neillcorlett.com/cmdpack/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB +=		c

MASTER_SITES =		http://www.neillcorlett.com/downloads/

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/src

CMDPACK_PROGS =	bin2iso bincomp brrrip byteshuf byteswap cdpatch ecm fakecrc \
		hax65816 id3point pecompat rels screamf subfile uips usfv \
		vb2rip wordadd zerofill

do-build:
.for prog in ${CMDPACK_PROGS}
	cd ${WRKSRC} && ${CC} ${CFLAGS} -o ${prog} ${prog}.c
.endfor

do-install:
	cd ${WRKSRC} && \
	${INSTALL_PROGRAM} ${CMDPACK_PROGS} ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/cmdpack
	${INSTALL_DATA} ${WRKDIST}/doc/cmdpack.txt ${PREFIX}/share/cmdpack/

.include <bsd.port.mk>
