# $OpenBSD: Makefile,v 1.3 2008/01/20 15:11:05 ajacoutot Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=		QEMU accelerator module

DISTNAME=		kqemu-1.3.0pre11
PKGNAME=		${DISTNAME}p0
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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--cc=${CC} \
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
