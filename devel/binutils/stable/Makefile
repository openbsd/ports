# $OpenBSD: Makefile,v 1.31 2004/11/18 23:23:56 fgsch Exp $

COMMENT=		"GNU development tools"

V=			2.14
DISTNAME=		binutils-$V
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://sources.redhat.com/binutils/

AUTOCONF_VERSION=	2.13
BUILD_DEPENDS=		::devel/automake \
			${MODGNU_AUTOCONF_DEPENDS}

SUBST_VARS=		TARGET_ARCH OSREV

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-nls --disable-commonbfdlib

# cross-tools
FLAVORS=		alpha arm armeb hppa i386 m68k m88k mips powerpc \
			sparc sparc64 vax amd64
FLAVOR?=

SEPARATE_BUILD=		flavored

# XXX: special handling needed for powerpc arch's and bootstraping
.if !empty(FLAVOR:L) && ${FLAVOR:L} != ${MACHINE_ARCH}
CONFIGURE_ARGS+=	--target=${FLAVOR:L}-unknown-openbsd${OSREV}
TARGET_ARCH=		${FLAVOR:L}
FULLPKGNAME=		binutils-${TARGET_ARCH}-$V
.if ${FLAVOR} == "alpha" || ${FLAVOR} == "amd64" || ${FLAVOR} == "sparc64"
CONFIGURE_ARGS+=	--enable-64-bit-bfd
.endif
.else
TARGET_ARCH=		${MACHINE_ARCH}
.endif

TARGET_DIR=		$${PREFIX}/${TARGET_ARCH}-unknown-openbsd${OSREV}

REGRESS_TARGET=		check
REGRESS_DEPENDS=	::devel/dejagnu

FILES=			addr2line ar nm-new objdump objcopy ranlib readelf size strings strip-new 

EMULPARAMS=		i386obsd.sh sparcobsd.sh m68kobsd.sh \
			elf32_sparc_obsd.sh elf32ppc_obsd.sh \
			elf64_sparc_obsd.sh elf64alpha_obsd.sh \
			elf_i386_obsd.sh elf_x86_64_obsd.sh \
			elf_obsd.sh armelf_obsd.sh armelfb_obsd.sh

post-extract:
.for f in ${EMULPARAMS}
	@cp -f ${FILESDIR}/${f} ${WRKSRC}/ld/emulparams
.endfor
	@cp -f ${FILESDIR}/te-obsd.h ${WRKSRC}/gas/config
	@cp -f ${FILESDIR}/dis-init.c ${WRKSRC}/opcodes

post-patch:
	@-cd ${WRKSRC}/bfd && { automake; AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf; }
	@cd ${WRKSRC}/binutils && automake
	@-cd ${WRKSRC}/gas && { automake; AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf; }
	@cd ${WRKSRC}/gprof && automake
	@cd ${WRKSRC}/ld && automake
	@cd ${WRKSRC}/opcodes && automake

post-build:
	cd ${WRKBUILD}/binutils/doc && ${MAKE} info
	cd ${WRKBUILD}/gas/doc && ${MAKE} info
	cd ${WRKBUILD}/ld && ${MAKE} ld.1

do-install:
	${INSTALL_DATA_DIR} ${TARGET_DIR}/bin
	${INSTALL_DATA_DIR} ${TARGET_DIR}/man/man1
	${INSTALL_DATA_DIR} ${TARGET_DIR}/lib/ldscripts
	cd ${WRKBUILD} && {						\
	    ${INSTALL_PROGRAM} binutils/addr2line ${TARGET_DIR}/bin;	\
	    ${INSTALL_PROGRAM} binutils/readelf ${TARGET_DIR}/bin;	\
	    ${INSTALL_PROGRAM} gas/as-new ${TARGET_DIR}/bin/as;		\
	    ${INSTALL_PROGRAM} ld/ld-new ${TARGET_DIR}/bin/ld;		\
	    ${INSTALL_MAN} gas/doc/as.1 ${TARGET_DIR}/man/man1;		\
	    ${INSTALL_MAN} ld/ld.1 ${TARGET_DIR}/man/man1;		\
	    ${INSTALL_DATA} ld/ldscripts/* ${TARGET_DIR}/lib/ldscripts;	\
	    for s in ${FILES}; do					\
		d=`echo $${s} | sed s/-new//`;				\
		${INSTALL_PROGRAM} binutils/$${s} ${TARGET_DIR}/bin/$${d}; \
		${INSTALL_MAN} ${WRKSRC}/binutils/doc/$${d}.1 ${TARGET_DIR}/man/man1; \
	    done							\
	}

.include <bsd.port.mk>
