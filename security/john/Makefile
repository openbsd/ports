# $OpenBSD: Makefile,v 1.28 2004/12/27 13:28:34 alek Exp $

COMMENT=		"extremely fast password cracker"

DISTNAME=		john-1.6.37
CATEGORIES=     	security

HOMEPAGE=		http://www.openwall.com/john/

# GPL & Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}a/

DISTFILES=		${DISTNAME}.tar.gz \
			john-1.6.tar.gz

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME}
WRKSRC=			${WRKDIST}/src
OLDJOHN=		${WRKDIR}/john-1.6
MAKE_FLAGS=		CC=${CC} AS=${CC} LD=${CC} \
			CFLAGS="${CFLAGS} -c"

.if ${MACHINE_ARCH} == "i386"
FLAVORS=		no_mmx
FLAVOR?=
.if ${FLAVOR:L:Mno_mmx}
ALL_TARGET=		openbsd-x86-any-elf
.else
ALL_TARGET=		openbsd-x86-mmx-elf
.endif
.elif ${MACHINE_ARCH} == "sparc"
ALL_TARGET=		openbsd-sparc
.elif ${MACHINE_ARCH} == "vax"
ALL_TARGET=		openbsd-vax
.elif ${MACHINE_ARCH} == "alpha"
ALL_TARGET=		linux-alpha
.elif ${MACHINE_ARCH} == "powerpc"
ALL_TARGET=		linux-ppc
.else
ALL_TARGET=		generic
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/john
	${INSTALL_PROGRAM} ${WRKDIST}/run/john ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/run/mailer ${PREFIX}/bin
	@cd ${PREFIX}/bin && \
		ln -sf john unshadow && \
		ln -sf john unafs && \
		ln -sf john unique
	${INSTALL_DATA} ${OLDJOHN}/run/* ${PREFIX}/share/john
	${INSTALL_DATA} ${WRKDIST}/run/* ${PREFIX}/share/john
	${INSTALL_DATA} ${OLDJOHN}/doc/* ${PREFIX}/share/doc/john
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/john

.include <bsd.port.mk>
