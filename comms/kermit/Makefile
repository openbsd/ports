# $OpenBSD: Makefile,v 1.14 2001/09/30 19:08:58 naddy Exp $

COMMENT=	"serial and network communications package"

PKGNAME=	kermit-7.0.197
DISTNAME=	cku197
CATEGORIES=	comms
NEED_VERSION=	1.463
HOMEPAGE=	http://www.kermit-project.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.icm.edu.pl/pub/kermit/archives/

WRKDIST=	${WRKDIR}

MAKE_FILE=	makefile
ALL_TARGET=	xermit #ckuker.nr
MAKE_FLAGS=	KTARGET=openbsd \
		CFLAGS="${CFLAGS} -DBSD44 -DCK_CURSES -DCK_NEWTERM \
		-DTCPSOCKET -DOPENBSD -DUSE_UU_LOCK -DFNFLOAT -DUSE_STRERROR" \
		LIBS="-lcurses -lutil -lm"

DOCDIR=		${PREFIX}/share/doc/kermit
EXAMPLESDIR=	${PREFIX}/share/examples/kermit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wermit ${PREFIX}/bin/kermit
	${INSTALL_MAN} ${WRKSRC}/ckuker.nr ${PREFIX}/man/man1/kermit.1
	@echo "Installing documentation ..."
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@for file in ckuaaa.txt ckermit2.txt ckcbwr.txt ckubwr.txt \
	    ckuins.txt telnet.txt security.txt iksd.txt ckcplm.txt \
	    ckccfg.txt ; \
	do \
	    ${INSTALL_DATA} ${WRKSRC}/$$file ${DOCDIR} ; \
	done
	@echo "Installing examples ..."
	@${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@set -- \
	    ckermit.ini dot.kermrc \
	    ckermod.ini dot.mykermrc \
	    ckurzsz.ini dot.rzszkermrc \
	    ckermit.kdd dot.kdd \
	    ckermit.knd dot.knd \
	    ckermit.ksd dot.ksd \
	    ckedemo.ksc ckedemo.ksc \
	    ckepage.ksc ckepage.ksc \
	    ckevt.ksc ckevt.ksc \
	    iksdpy iksdpy ; \
	while [ $$# -gt 1 ]; do \
	    file=$$1; dest=$$2 ; shift ; shift ; \
	    ${INSTALL_DATA} ${WRKSRC}/$$file ${EXAMPLESDIR}/$$dest; \
	done

.include <bsd.port.mk>
