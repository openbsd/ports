# $OpenBSD: Makefile,v 1.4 2010/10/22 15:32:33 jasper Exp $

COMMENT=	newlib for arm-elf cross-development

DISTNAME=	newlib-1.18.0

HOMEPAGE=	http://sourceware.org/newlib/

MASTER_SITES=	ftp://sources.redhat.com/pub/newlib/

EXTRACT_SUFX=	.tar.gz

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/arm-elf/gcc

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	CFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=	Yes
USE_GROFF=	No
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/newlib

.include <bsd.port.mk>
