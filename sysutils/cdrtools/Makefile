# $OpenBSD: Makefile,v 1.18 2011/11/10 14:13:06 sthen Exp $

COMMENT=		ISO 9660 filesystem and CD creation tools

DISTNAME=		cdrtools-2.01
REVISION =		2
CATEGORIES=		sysutils
HOMEPAGE=		http://cdrecord.berlios.de/old/private/cdrecord.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ossaudio

MASTER_SITES=		ftp://ftp.berlios.de/pub/cdrecord/ \
			http://spacehopper.org/mirrors/berlios/cdrecord/

USE_GMAKE=		Yes
USE_GROFF =		Yes

MAKE_ENV=		MAKEPROG=${MAKE_PROGRAM} \
			CCOM=${CC}

NO_REGRESS=		Yes

.if ${MACHINE} != "i386" || ${CC} != "cc"
do-configure:
	cd ${WRKSRC}/RULES && \
	    ln -sf i386-openbsd-cc.rul ${MACHINE}-openbsd-${CC}.rul
.endif

OBJ=	OBJ/${MACHINE_ARCH}-openbsd-${CC}

do-install:
	@cp ${WRKSRC}/mkisofs/mkisofs.8 ${WRKSRC}/mkisofs/mkisofs.1
.for i in cdda2wav cdrecord mkisofs readcd
	${INSTALL_PROGRAM} ${WRKBUILD}/$i/${OBJ}/$i ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/$i/$i.1 ${PREFIX}/man/man1
.endfor
.for i in devdump isodebug isodump isoinfo isovfy
	${INSTALL_PROGRAM} ${WRKBUILD}/mkisofs/diag/${OBJ}/$i ${PREFIX}/bin
.endfor
	${INSTALL_MAN} ${WRKSRC}/mkisofs/diag/isoinfo.8 \
	    ${PREFIX}/man/man1/isoinfo.1
.for i in devdump.1 isovfy.1
	cd ${PREFIX}/man/man1 && ln -s isoinfo.1 $i
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/cdrtools
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${PREFIX}/share/doc/cdrtools

.include <bsd.port.mk>
