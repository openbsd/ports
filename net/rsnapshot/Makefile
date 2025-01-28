COMMENT=		remote filesystem snapshot utility

GH_ACCOUNT=		rsnapshot
GH_PROJECT=		rsnapshot
GH_TAGNAME=		1.5.1

CATEGORIES=		net sysutils

HOMEPAGE=		http://www.rsnapshot.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

BUILD_DEPENDS=		net/rsync

RUN_DEPENDS=		devel/p5-Lchown \
			net/rsync

PKG_ARCH=		*

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.17
AUTORECONF=		./autogen.sh

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/rsnapshot

# needed for tests
USE_GMAKE=		Yes
TEST_TARGET=		test

post-configure:
	sed -i "s,/etc/rsnapshot.conf,${SYSCONFDIR}/rsnapshot.conf,g" \
		${WRKSRC}/{README.md,rsnapshot-program.pl} \
		${WRKSRC}/rsnapshot{,-diff} \
		${WRKSRC}/utils/rsnapshotdb/rsnapshotDB.pl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rsnapshot/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/examples/rsnapshot/
	cp -R ${WRKSRC}/utils/ ${PREFIX}/share/examples/rsnapshot/

.include <bsd.port.mk>
