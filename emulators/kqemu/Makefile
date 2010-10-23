# $OpenBSD: Makefile,v 1.7 2010/10/23 22:01:30 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=		QEMU accelerator module

DISTNAME=		kqemu-1.3.0pre11
REVISION=		3
CATEGORIES=		emulators

HOMEPAGE=		http://bellard.org/qemu/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=		::devel/gmake

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix=${PREFIX} \
			--cc=${CC} \
			--host-cc=${CC} \
			--make=${MAKE_PROGRAM}

INSTDIR=		${PREFIX}/lib/kqemu
SUBST_VARS=		INSTDIR

NO_REGRESS=		Yes

FILES=			Makefile.openbsd kqemu-openbsd.c

post-extract:
.for _f in ${FILES}
	@cp ${FILESDIR}/${_f} ${WRKSRC}
.endfor
	@cd ${WRKSRC} && cp kqemu-openbsd.c kqemu-openbsd-mp.c

do-build:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f Makefile.openbsd
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
	    ${MAKE_FLAGS} -f Makefile.openbsd MP=1

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKBUILD} && ${INSTALL_DATA} kqemu.o kqemu_mp.o \
	    ${INSTDIR}

.include <bsd.port.mk>
