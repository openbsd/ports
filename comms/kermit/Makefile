# $OpenBSD: Makefile,v 1.27 2007/09/16 01:37:09 merdely Exp $

COMMENT=	serial and network communications package

PKGNAME=	kermit-8.0.211
DISTNAME=	cku211
CATEGORIES=	comms
HOMEPAGE=	http://www.kermit-project.org/

PERMIT_PACKAGE_CDROM=	discriminatory license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	discriminatory license
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m util

MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.icm.edu.pl/pub/kermit/archives/

WRKDIST=	${WRKDIR}

MAKE_FILE=	makefile
ALL_TARGET=	xermit
MAKE_FLAGS=	KTARGET=openbsd CC="${CC}" CC2="${CC}" \
		CFLAGS="${CFLAGS} -DBSD44 -DCK_CURSES -DCK_NEWTERM \
		-DTCPSOCKET -DOPENBSD -DUSE_UU_LOCK -DFNFLOAT -DUSE_STRERROR \
		-DCKHTTP" \
		LIBS="-lcurses -lutil -lm"

NO_REGRESS=	Yes

DOCDIR=		${PREFIX}/share/doc/kermit
DOCS=		COPYING.TXT ckaaaa.txt ckcbwr.txt ckccfg.txt ckcplm.txt \
		ckermit70.txt ckermit80.txt ckubwr.txt ckuins.txt ckututor.txt
EXAMPLEDIR=	${PREFIX}/share/examples/kermit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wermit ${PREFIX}/bin/kermit
	${INSTALL_MAN} ${WRKSRC}/ckuker.nr ${PREFIX}/man/man1/kermit.1
	${INSTALL_DATA_DIR} ${DOCDIR}
	for file in ${DOCS}; do \
	    ${INSTALL_DATA} ${WRKSRC}/$$file ${DOCDIR}; \
	done
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/ckermit.ini ${EXAMPLEDIR}/dot.kermrc
	${INSTALL_DATA} ${WRKSRC}/ckermod.ini ${EXAMPLEDIR}/dot.mykermrc

.include <bsd.port.mk>
