# $OpenBSD: Makefile,v 1.1 2004/07/21 11:19:30 espie Exp $


COMMENT=	"smalltalk system, vm"


DISTFILES=Squeak-$V-${SRC_V}.src.tar.gz 

PKGNAME=squeak-vm-$V.${SRC_V}
PKG_ARCH=*

WRKDIST=${WRKDIR}/Squeak-$V-${SRC_V}
WRKSRC=${WRKDIST}/platforms/unix/config

SEPARATE_BUILD=simple

CONFIGURE_STYLE=gnu
DESTDIRNAME=ROOT
CONFIGURE_ENV=RANLIB=ranlib
USE_GMAKE=yes
USE_X11=yes

.if ${MACHINE_ARCH} != "powerpc"
MAKE_FLAGS+=INTERP=gnu-interp
.endif

MAKE_FLAGS+=docdir=${PREFIX}/share/doc/squeak
FAKE_FLAGS=${MAKE_FLAGS} ROOT=${WRKINST}

RUN_DEPENDS=	:squeak-image-$V.*:lang/squeak/image \
		:squeak-sources-${MAJOR}:lang/squeak/sources

.include <bsd.port.mk>
