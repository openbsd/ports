# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:32 espie Exp $

COMMENT=		execute a command on many hosts in parallel

DISTNAME=		shmux-1.0.2
CATEGORIES=		sysutils
HOMEPAGE=		http://web.taranis.org/shmux/
MASTER_SITES=		${HOMEPAGE}dist/
EXTRACT_SUFX=		.tgz

# XXX N.B. if adding patches: redistributing modified versions
# is not permitted.  See LICENSE, it has an important restriction
# on top of what at first glance looks like a typical BSD license.
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c termcap pcre
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--datarootdir=${PREFIX}/share/doc
USE_GROFF =		Yes
LIB_DEPENDS=		devel/pcre
RUN_DEPENDS=		net/fping

ALL_TARGET=
TEST_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/shmux
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/shmux

.include <bsd.port.mk>
