# $OpenBSD: Makefile,v 1.31 2005/09/07 19:43:41 aanriot Exp $

COMMENT=		"extremely fast password cracker"

DISTNAME=		john-1.6.38
PKGNAME=		${DISTNAME}p0
CATEGORIES=		security

HOMEPAGE=		http://www.openwall.com/john/

# GPL & Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}c/
DISTFILES=		${DISTNAME}.tar.gz \
			john-1.6.tar.gz

NO_REGRESS=		Yes

WRKSRC=			${WRKDIST}/src
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
ALL_TARGET=		linux-ppc32
.elif ${MACHINE_ARCH} == "powerpc64"
ALL_TARGET=		linux-ppc64
.elif ${MACHINE_ARCH} == "hppa"
ALL_TARGET=		hpux-pa-risc-${CC}
.elif ${MACHINE_ARCH} == "sparc64"
ALL_TARGET=		"openbsd-sparc64"
.else
ALL_TARGET=		generic
.endif

do-configure:
	@perl -pi -e "s,%%PREFIX%%,${PREFIX},;" \
		-e "s,%%SYSCONFDIR%%,${SYSCONFDIR},;" ${WRKSRC}/params.h

	@perl -pi -e 's,%%JOHN%%,${PREFIX}\/share\/john,g;' \
		${WRKDIST}/run/john.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/john
	${INSTALL_DATA_DIR} ${PREFIX}/share/john
	${INSTALL_PROGRAM} ${WRKDIST}/run/john ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKDIST}/run/mailer ${PREFIX}/bin
	@cd ${PREFIX}/bin && \
		ln -sf john unshadow && \
		ln -sf john unafs && \
		ln -sf john unique
	${INSTALL_DATA} ${WRKDIST}/run/john.conf ${PREFIX}/share/examples/john
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/john
	${INSTALL_DATA} ${WRKDIR}/john-1.6/run/*.chr ${PREFIX}/share/john

.include <bsd.port.mk>
