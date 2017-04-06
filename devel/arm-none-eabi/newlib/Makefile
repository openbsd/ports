# $OpenBSD: Makefile,v 1.4 2017/04/06 10:24:26 espie Exp $

COMMENT=	newlib for arm-none-eabi cross-development

DISTNAME=	newlib-2.2.0-1
VERSION=	2.2.0.1
PKGNAME=	${CONFIG}-newlib-${VERSION}
REVISION=	1

MAKE_ENV+=	${CONFIGURE_ENV}

HOMEPAGE=	http://sourceware.org/newlib/

MASTER_SITES=	ftp://sourceware.org/pub/newlib/
#MASTER_SITES=	ftp://sources.redhat.com/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	devel/arm-none-eabi/binutils \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/arm-none-eabi/gcc-linaro

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	CFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=	Yes
USE_GROFF=	No
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arm-none-eabi/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/arm-none-eabi/newlib

.include <bsd.port.mk>
