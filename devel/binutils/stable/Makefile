# $OpenBSD: Makefile,v 1.1.1.1 2002/02/19 04:19:21 fgsch Exp $

COMMENT=		"GNU development tools"

DISTNAME=		binutils-2.11.2
CATEGORIES=		devel
NEED_VERSION=		1.500
MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	binutils

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=		Federico G. Schwindt <fgsch@openbsd.org>

HOMEPAGE=		http://sources.redhat.com/

BUILD_DEPENDS=		automake::devel/automake \
			autoconf::devel/autoconf

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--with-prefix=${PREFIX} \
			--disable-nls --disable-gdbtk --disable-commonbfdlib

# cross-tools
FLAVORS=		alpha hppa i386 m68k m88k powerpc sparc sparc64
#FLAVORS+=		 vax
FLAVOR?=

BINUTILS=		ar nm-new objdump ranlib size strings strip-new 

# XXX: special handling needed for powerpc arch's and bootstraping
.if !empty(FLAVOR:L) && ${FLAVOR:L} != ${MACHINE_ARCH}
CONFIGURE_ARGS+=	--target=${FLAVOR:L}-unknown-openbsd${OSREV}
.endif

post-patch:
	@cd ${WRKSRC}/bfd && autoconf
	@-cd ${WRKSRC}/gas && ( automake; autoconf )
	@cd ${WRKSRC}/ld && automake

do-install:
	cd ${WRKSRC} && (						\
	    ${INSTALL_PROGRAM} gas/as-new ${PREFIX}/bin/as;		\
	    ${INSTALL_PROGRAM} gprof/gprof ${PREFIX}/bin;		\
	    ${INSTALL_PROGRAM} ld/ld-new ${PREFIX}/bin/ld;		\
	    ${INSTALL_MAN} gas/doc/as.1 ${PREFIX}/man/man1;		\
	    ${INSTALL_MAN} gprof/gprof.1 ${PREFIX}/man/man1;		\
	    ${INSTALL_MAN} ld/ld.1 ${PREFIX}/man/man1;			\
	    for s in ${BINUTILS}; do					\
		d=`echo $${s} | sed s/-new//`;				\
		${INSTALL_PROGRAM} binutils/$${s} ${PREFIX}/bin/$${d};	\
		${INSTALL_MAN} binutils/$${d}.1 ${PREFIX}/man/man1;	\
	    done							\
	)

.include <bsd.port.mk>
