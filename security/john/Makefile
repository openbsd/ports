# $OpenBSD: Makefile,v 1.25 2003/09/27 06:47:52 marcm Exp $

COMMENT=		"extremely fast password cracker"

DISTNAME=		john-1.6.36
CATEGORIES=     	security

HOMEPAGE=		http://www.openwall.com/john/

# GPL & Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.openwall.com/john/dl/

DISTFILES=		${DISTNAME}.tar.gz \
			john-1.6.tar.gz

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME}
WRKSRC=			${WRKDIST}/src
OLDJOHN=		${WRKDIR}/john-1.6

.if ${MACHINE_ARCH} == "i386"
ALL_TARGET=		openbsd-x86-any
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
