ONLY_FOR_ARCHS=	i386 amd64

COMMENT=		QEMU accelerator module

DISTNAME=		kqemu-1.3.0pre11
CATEGORIES=		emulators

HOMEPAGE=		http://fabrice.bellard.free.fr/qemu/

MAINTAINER=		Todd T. Fries <todd@OpenBSD.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=		::devel/gmake

CONFIGURE_STYLE=	gnu
MAKE_FILE=		Makefile.openbsd
PREFIX=			${LOCALBASE}/lib/kqemu

FILES= Makefile.openbsd kqemu-openbsd.c

post-extract:
.for _f in ${FILES}
	@cp ${FILESDIR}/${_f} ${WRKBUILD}
.endfor

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}
	${INSTALL_DATA} ${WRKBUILD}/kqemu.o ${PREFIX}

.include <bsd.port.mk>
