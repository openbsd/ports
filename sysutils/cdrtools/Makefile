# $OpenBSD: Makefile,v 1.10 2004/12/20 10:35:35 alek Exp $

COMMENT=		"ISO 9660 filesystem and CD creation tools"

DISTNAME=		cdrtools-2.01
CATEGORIES=		sysutils
HOMEPAGE=		http://www.fokus.gmd.de/research/cc/glone/employees/joerg.schilling/private/cdrecord.html

MAINTAINER=		Jacob Meuser <jakemsr@jakemsr.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ossaudio

MASTER_SITES=		ftp://ftp.berlios.de/pub/cdrecord/

USE_GMAKE=		Yes

MAKE_ENV=		MAKEPROG=${MAKE_PROGRAM} \
			CCOM=${CC}

NO_REGRESS=		Yes

CDRMACH=		${MACHINE}-openbsd-${CC}

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	@ln -sf ${WRKSRC}/RULES/i386-openbsd-cc.rul \
		${WRKSRC}/RULES/${CDRMACH}.rul
.endif

do-install:
	@cp ${WRKSRC}/mkisofs/mkisofs.8 ${WRKSRC}/mkisofs/mkisofs.1
.for PROG in cdda2wav cdrecord mkisofs readcd
	${INSTALL_PROGRAM} ${WRKBUILD}/${PROG}/OBJ/${CDRMACH}/${PROG} \
		${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PROG}/${PROG}.1 ${PREFIX}/man/man1
.endfor
.for PROG in devdump isodebug isodump isoinfo isovfy
	${INSTALL_PROGRAM} ${WRKBUILD}/mkisofs/diag/OBJ/${CDRMACH}/${PROG} \
		${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/mkisofs/diag/isoinfo.8 \
		${PREFIX}/man/man1/isoinfo.1
	@cd ${PREFIX}/man/man1; \
		for i in devdump.1 isovfy.1 ; do \
			ln -s isoinfo.1 $$i ; \
		done
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrtools
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${PREFIX}/share/doc/cdrtools

.include <bsd.port.mk>
