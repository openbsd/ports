# $OpenBSD: Makefile,v 1.21 2014/06/12 08:07:32 sthen Exp $

COMMENT=		ISO 9660 filesystem and CD/DVD/BD creation tools

DISTNAME=		cdrtools-3.00
REVISION=		0
CATEGORIES=		sysutils
HOMEPAGE=		http://cdrtools.sourceforge.net/private/cdrtools.html

# mostly CDDL, some components GPL (see COPYING)
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ossaudio

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cdrtools/}


USE_GMAKE=		Yes

MAKE_ENV +=		MAKEPROG=${MAKE_PROGRAM}
MAKE_FLAGS =		GMAKE_NOWARN=true CC="${CC}" CC++="${CXX}" \
			LDCC="${CC}" LDCC++="${CXX}" \
			MKC++DEP="${CXX} -M" MKDEP="${CC} -M" \
			DYNLD="${CC}" DYNLDC++="${CXX}" \
			GCCOPTOPT="" RANLIB=ranlib AR=ar \
			OSS_SOUND_DEV='"/dev/audio"'

NO_TEST=		Yes

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
