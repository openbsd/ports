# $OpenBSD: Makefile,v 1.2 1999/03/19 01:28:40 espie Exp $

CDROM=        "NOFEE: can not sell"

DISTNAME=xanim-2.80.0
WRKSRC=${WRKDIR}/xanim2800
CATEGORIES= graphics x11

MAINTAINER=espie@openbsd.org


MASTER_SITES=ftp://xanim.va.pubnix.com/
MASTER_SITES+=ftp://xanim.va.pubnix.com/modules/

BASEDISTFILE=xanim2800.tar.gz
SUPFILES=
DISTFILES=${BASEDISTFILE}
PATCH_LIST=patch-*

# some architectures support more codecs
.if (${MACHINE_ARCH} == i386)
SUPFILES= xa1.0_cyuv_netbsd386.o.Z \
xa2.0_cvid_netbsd386.o.Z \
xa2.0_iv32_netbsd386.o.Z
PATCH_LIST+=i386-patch
.endif

.if (${MACHINE_ARCH} == m68k)
SUPFILES= xa1.0_cyuv_netbsd68k.o.Z \
xa2.0_cvid_netbsd68k.o.Z \
xa2.0_iv32_netbsd68k.o.Z
PATCH_LIST+=m68k-patch
.endif

.if (${MACHINE_ARCH} == sparc)
SUPFILES= xa1.0_cyuv_sparcAOUT.o.Z \
xa2.0_cvid_sparcCOFF.o.Z \
xa2.0_iv32_sparcCOFF.o.Z
PATCH_LIST+=sparc-patch
.endif

.if defined(SUPFILES)
DISTFILES   += ${SUPFILES}
EXTRACT_ONLY=${BASEDISTFILE}
post-extract:
	@${ECHO_MSG} "===>  Adding ${MACHINE_ARCH} specific object files"
	@for i in ${SUPFILES}; do \
		j=`basename $$i`; \
		cp ${DISTDIR}/$$i ${WRKSRC} && uncompress ${WRKSRC}/$$j; \
	done
.endif

post-configure:
	cp ${FILESDIR}/xanim.man ${WRKSRC}

DOCDIR=${PREFIX}/share/doc/xanim

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	for file in ${WRKSRC}/docs/*; \
	do \
		${INSTALL_DATA} $$file ${DOCDIR}; \
	done

USE_IMAKE=yes

.include <bsd.port.mk>
