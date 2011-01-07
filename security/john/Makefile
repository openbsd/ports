# $OpenBSD: Makefile,v 1.41 2011/01/07 15:34:53 benoit Exp $

COMMENT-main =		extremely fast password cracker

V =			1.7.6
DISTNAME =		john-${V}
PKGNAME-main =		${DISTNAME}
CATEGORIES =		security

HOMEPAGE =		http://www.openwall.com/john/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPL & Public Domain
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/g/
MASTER_SITES0 =		${HOMEPAGE}/contrib/
                        
MULTI_PACKAGES =	-main

FLAVORS =		contrib
FLAVOR ?=

WRKSRC =		${WRKDIST}/src

MAKE_FLAGS =		CC=${CC} AS=${CC} LD=${CC} \
			CFLAGS="${CFLAGS} -c" LDFLAGS="${LDFLAGS}"

REGRESS_TARGET =	check

.if ${MACHINE_ARCH} == "i386"
ALL_TARGET=		openbsd-x86-mmx
.elif ${MACHINE_ARCH} == "amd64"
ALL_TARGET=		openbsd-x86-64
.elif ${MACHINE_ARCH} == "sparc"
ALL_TARGET=		openbsd-sparc
.elif ${MACHINE_ARCH} == "vax"
ALL_TARGET=		openbsd-vax
.elif ${MACHINE_ARCH} == "alpha"
ALL_TARGET=		openbsd-alpha
.elif ${MACHINE_ARCH} == "powerpc"
ALL_TARGET=		openbsd-ppc32
.elif ${MACHINE_ARCH} == "powerpc64"
ALL_TARGET=		openbsd-ppc64
.elif ${MACHINE_ARCH} == "hppa"
ALL_TARGET=		openbsd-pa-risc
.elif ${MACHINE_ARCH} == "sparc64"
ALL_TARGET=		openbsd-sparc64
.else
ALL_TARGET=		generic
.endif

.if ${FLAVOR:L:Mcontrib}
MULTI_PACKAGES +=        -contrib
COMMENT-contrib =        extremely fast password cracker
PKGNAME-contrib =        john-contrib-${V}
PATCH_DIST_STRIP =       -p1
PATCHFILES +=            ${DISTNAME}-jumbo-9.diff.gz:0
WANTLIB +=               m crypto ldap_r lber
BUILD_DEPENDS +=         databases/mysql
LIB_DEPENDS +=           databases/openldap
MAKE_FLAGS +=            LDFLAGS="-lcrypto -lm"
.endif

do-configure:
	${SUBST_CMD} ${WRKSRC}/params.h

do-install:
	@grep -h -v '^#!comment:' ${WRKDIST}/run/password.lst \
		/usr/share/dict/words | \
		${WRKDIST}/run/unique ${WRKDIST}/run/words.lst
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
.if ${FLAVOR:L:Mcontrib}
	@rm ${WRKDIST}/doc/*.bak.orig
.endif
	${INSTALL_DATA} ${WRKDIST}/doc/* ${PREFIX}/share/doc/john
	${INSTALL_DATA} ${WRKDIST}/run/*.chr ${PREFIX}/share/john
	${INSTALL_DATA} ${WRKDIST}/run/words.lst ${PREFIX}/share/john/password.lst

.include <bsd.port.mk>
