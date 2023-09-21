COMMENT=	newlib for arm-none-eabi cross-development

DISTNAME=	newlib-2.2.0-1
VERSION=	2.2.0.1
PKGNAME=	${CONFIG}-newlib-${VERSION}
REVISION=	2

MAKE_ENV+=	${CONFIGURE_ENV}

HOMEPAGE=	http://sourceware.org/newlib/

SITES=		ftp://sourceware.org/pub/newlib/
#SITES=		ftp://sources.redhat.com/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	devel/arm-none-eabi/binutils,arm \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/arm-none-eabi/gcc,arm

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	CFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arm-none-eabi/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/arm-none-eabi/newlib

.include <bsd.port.mk>
