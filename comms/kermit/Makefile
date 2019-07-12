# $OpenBSD: Makefile,v 1.32 2019/07/12 20:43:47 sthen Exp $

COMMENT =		serial and network communications package

PKGNAME =		kermit-9.0.302
DISTNAME =		cku302
CATEGORIES =		comms
HOMEPAGE =		http://www.kermitproject.org/

# THE C-KERMIT 9.0 LICENSE (Revised 3-Clause BSD License)
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses m util

MASTER_SITES =		http://www.kermitproject.org/ftp/kermit/archives/

WRKDIST =		${WRKDIR}

MAKE_FILE =		makefile
ALL_TARGET =		xermit
MAKE_FLAGS =		KTARGET=openbsd CC="${CC}" CC2="${CC}" \
			CFLAGS="${CFLAGS} -DBSD44 -DCK_CURSES -DCK_NEWTERM \
			-DTCPSOCKET -DOPENBSD -DUSE_UU_LOCK -DFNFLOAT \
			-DUSE_STRERROR -DCKHTTP" \
			LIBS="-lcurses -lutil -lm"

NO_TEST =		Yes

DOCDIR =		${PREFIX}/share/doc/kermit
DOCS =			COPYING.TXT ckaaaa.txt ckcbwr.txt ckc302.txt \
			ckccfg.txt ckcplm.txt ckermit70.txt ckermit80.txt \
			ckermit90.txt ckubwr.txt ckuins.txt ckututor.txt
EXAMPLEDIR =		${PREFIX}/share/examples/kermit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wermit ${PREFIX}/bin/kermit
	${INSTALL_MAN} ${WRKSRC}/ckuker.nr ${PREFIX}/man/man1/kermit.1
	${INSTALL_DATA_DIR} ${DOCDIR}
	for file in ${DOCS}; do \
	    ${INSTALL_DATA} ${WRKSRC}/$$file ${DOCDIR}; \
	done
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/ockermit.ini ${EXAMPLEDIR}/dot.kermrc
	${INSTALL_DATA} ${WRKSRC}/ockermod.ini ${EXAMPLEDIR}/dot.mykermrc

.include <bsd.port.mk>
