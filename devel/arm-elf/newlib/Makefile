# $OpenBSD: Makefile,v 1.1.1.1 2007/04/02 15:35:02 sturm Exp $

COMMENT=	"newlib for arm-elf cross-development"

DISTNAME=	newlib-1.14.0

HOMEPAGE=	http://sourceware.org/newlib/

# multiple copyrights, but basically bsd
# see: /usr/local/share/doc/newlib
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://sources.redhat.com/pub/newlib/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/arm-elf/gcc

# cope with user settings in /etc/mk.conf
MAKE_FLAGS=	CFLAGS="-I${LOCALBASE}/include"
USE_GMAKE=	Yes
CONFIGURE_ARGS+=--enable-interwork \
		--enable-multilib

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/newlib
	${INSTALL_DATA} ${WRKDIST}/COPYING.NEWLIB \
		${PREFIX}/share/doc/newlib

.include <bsd.port.mk>
