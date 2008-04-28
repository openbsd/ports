# $OpenBSD: Makefile,v 1.4 2008/04/28 22:27:41 todd Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=		QEMU accelerator module

DISTNAME=		kqemu-1.3.0pre11
PKGNAME=		${DISTNAME}p1
CATEGORIES=		emulators

HOMEPAGE=		http://fabrice.bellard.free.fr/qemu/

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

MAKE_FILE=		Makefile.openbsd
INSTDIR=		${PREFIX}/lib/kqemu
SUBST_VARS=		INSTDIR

NO_REGRESS=		Yes

FILES= Makefile.openbsd kqemu-openbsd.c

post-extract:
.for _f in ${FILES}
	@cp ${FILESDIR}/${_f} ${WRKBUILD}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA} ${WRKBUILD}/kqemu.o ${INSTDIR}

.include <bsd.port.mk>
