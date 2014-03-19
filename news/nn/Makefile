# $OpenBSD: Makefile,v 1.11 2014/03/19 13:48:40 jasper Exp $

COMMENT =		No News is Good News (Fast CLI Point & Read Newsreader)
DISTNAME =		nn-6.7.3
REVISION =		1
CATEGORIES =		news
HOMEPAGE =		http://www.nndev.org

MAINTAINER =		Aaron W. Hsu <arcfide@sacrideo.us>

# 4 point NN License a la BSD but with GPL Source Restriction and Freeware
# Requirement
PERMIT_PACKAGE_CDROM =	CDs not sold at cost
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c termlib

MASTER_SITES =		ftp://ftp.nndev.org/pub/nn-6.7/ \
                        http://distfiles.nl/
EXTRACT_SUFX =		.tar.Z

USE_GROFF =		Yes
NO_TEST =		Yes
MAKE_ENV =		CC="${CC}"

.if "${MACHINE_ARCH}" == "alpha"
MFILE =			m-alpha.h
.elif "${MACHINE_ARCH}" == "hppa"
MFILE =			m-hp9000.h
.elif "${MACHINE_ARCH}" == "m88k"
MFILE =			m-m88000.h
.elif "${MACHINE_ARCH}" == "powerpc"
MFILE = 		m-powerpc.h
.elif "${MACHINE_ARCH}" == "mips64"
MFILE =			m-mips.h
.elif "${MACHINE_ARCH}" == "sparc"
MFILE =			m-sparc.h
.elif "${MACHINE_ARCH}" == "sparc64"
MFILE =			m-sparc.h
.elif "${MACHINE_ARCH}" == "vax"
MFILE =			m-vax.h
.else
MFILE =			m-i80386.h
.endif

pre-configure:
	sed -e "s/OBSD_PREFIX/${PREFIX:S/\//\\\//g}/" \
		-e "s/m-i80386\.h/${MFILE}/" \
		${FILESDIR}/config.h > ${WRKSRC}/config.h
	cp ${FILESDIR}/s-openbsd.h ${WRKSRC}/conf/s-openbsd.h

pre-install:
	sed -e "s/\/usr\/local/${PREFIX:C/\//\\\//g}/" \
	    ${WRKSRC}/inst > ${WRKSRC}/inst.new
	mv ${WRKSRC}/inst ${WRKSRC}/inst.old
	mv ${WRKSRC}/inst.new ${WRKSRC}/inst
	chmod 755 ${WRKSRC}/inst

do-install:
	cd ${WRKSRC} && echo `pwd` && ./inst n

.include <bsd.port.mk>
