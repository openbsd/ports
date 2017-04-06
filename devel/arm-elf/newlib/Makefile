# $OpenBSD: Makefile,v 1.10 2017/04/06 10:24:25 espie Exp $

COMMENT=	newlib for arm-elf cross-development

DISTNAME=	newlib-1.18.0
REVISION=	1
BROKEN-amd64 =	as: unrecognized option -mfpu=softfpa

HOMEPAGE=	http://sourceware.org/newlib/

MASTER_SITES=	ftp://sources.redhat.com/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	devel/arm-elf/binutils \
		${RUN_DEPENDS}
RUN_DEPENDS=	devel/arm-elf/gcc

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	CFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arm-elf/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/newlib/arm-elf

.include <bsd.port.mk>
