# $OpenBSD: Makefile,v 1.2 2004/07/21 15:42:09 espie Exp $


COMMENT=	"smalltalk system, vm"


DISTFILES=Squeak-$V-${SRC_V}.src.tar.gz 

PKGNAME=squeak-vm-$V.${SRC_V}
PKG_ARCH=*

WRKDIST=${WRKDIR}/Squeak-$V-${SRC_V}
WRKSRC=${WRKDIST}/platforms/unix/config

SEPARATE_BUILD=simple

CONFIGURE_STYLE=gnu
AUTOCONF_VERSION=2.57
DESTDIRNAME=ROOT
CONFIGURE_ENV=RANLIB=ranlib
USE_GMAKE=yes
USE_X11=yes

.if ${MACHINE_ARCH} != "powerpc"
MAKE_FLAGS+=INTERP=gnu-interp
.endif

MAKE_FLAGS+=docdir=${PREFIX}/share/doc/squeak
FAKE_FLAGS=${MAKE_FLAGS} ROOT=${WRKINST}

post-extract:
	mkdir ${WRKDIST}/platforms/unix/vm-sound-OpenBSD
	cp ${FILESDIR}/vm-sound-OpenBSD/{acinclude.m4,sqUnixSoundOpenBSD.c} ${WRKDIST}/platforms/unix/vm-sound-OpenBSD

RUN_DEPENDS=	:squeak-image-$V.*:lang/squeak/image \
		:squeak-sources-${MAJOR}:lang/squeak/sources

.include <bsd.port.mk>
