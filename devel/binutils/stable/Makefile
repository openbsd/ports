# $OpenBSD: Makefile,v 1.10 2003/02/15 14:26:03 espie Exp $

COMMENT=		"GNU development tools"

DISTNAME=		binutils-2.11.2
CATEGORIES=		devel
MASTER_SITES=           ${MASTER_SITE_GNU:=binutils/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Federico G. Schwindt <fgsch@openbsd.org>

HOMEPAGE=		http://sources.redhat.com/

AUTOCONF_VERSION=	2.13
BUILD_DEPENDS=		::devel/automake \
			::devel/autoconf/${AUTOCONF_VERSION} \
			::devel/metaauto

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--with-prefix=${PREFIX} \
			--disable-nls --disable-gdbtk --disable-commonbfdlib

# cross-tools
FLAVORS=		alpha hppa i386 m68k m88k mips powerpc sparc \
			sparc64 vax
FLAVOR?=

# XXX: special handling needed for powerpc arch's and bootstraping
.if !empty(FLAVOR:L) && ${FLAVOR:L} != ${MACHINE_ARCH}
CONFIGURE_ARGS+=	--target=${FLAVOR:L}-unknown-openbsd${OSREV}
TARGET_ARCH=		${FLAVOR:L}
.else
TARGET_ARCH=		${MACHINE_ARCH}
.endif

TARGET_DIR=		$${PREFIX}/${TARGET_ARCH}-unknown-openbsd${OSREV}

REGRESS_TARGET=		check

FILES=			ar nm-new objdump ranlib size strings strip-new 

post-patch:
	@cd ${WRKSRC}/bfd && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	@cd ${WRKSRC}/binutils && AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf
	@-cd ${WRKSRC}/gas && { automake; AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf; }
	@cd ${WRKSRC}/ld && automake

do-install:
	${INSTALL_DATA_DIR} ${TARGET_DIR}/bin
	${INSTALL_DATA_DIR} ${TARGET_DIR}/man/man1
	cd ${WRKSRC} && {						\
	    ${INSTALL_PROGRAM} gas/as-new ${TARGET_DIR}/bin/as;		\
	    ${INSTALL_PROGRAM} gprof/gprof ${TARGET_DIR}/bin;		\
	    ${INSTALL_PROGRAM} ld/ld-new ${TARGET_DIR}/bin/ld;		\
	    ${INSTALL_MAN} gas/doc/as.1 ${TARGET_DIR}/man/man1;		\
	    ${INSTALL_MAN} gprof/gprof.1 ${TARGET_DIR}/man/man1;	\
	    ${INSTALL_MAN} ld/ld.1 ${TARGET_DIR}/man/man1;		\
	    for s in ${FILES}; do					\
		d=`echo $${s} | sed s/-new//`;				\
		${INSTALL_PROGRAM} binutils/$${s} ${TARGET_DIR}/bin/$${d}; \
		${INSTALL_MAN} binutils/$${d}.1 ${TARGET_DIR}/man/man1;	\
	    done							\
	}

SUBST_VARS=TARGET_ARCH OSREV

.include <bsd.port.mk>
