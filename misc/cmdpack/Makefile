# $OpenBSD: Makefile,v 1.1.1.1 2012/06/11 04:24:01 bentley Exp $

COMMENT =		various ROM (and other) development tools

DISTNAME =		cmdpack-1.03-src
PKGNAME =		${DISTNAME:S/-src//}

CATEGORIES =		misc

HOMEPAGE =		http://www.neillcorlett.com/cmdpack/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=		c

MASTER_SITES =		http://www.neillcorlett.com/downloads/

NO_REGRESS =		Yes

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
