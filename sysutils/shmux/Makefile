# $OpenBSD: Makefile,v 1.1.1.1 2010/04/12 09:16:33 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c termcap
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--datarootdir=${PREFIX}/share/doc
LIB_DEPENDS=		pcre::devel/pcre
RUN_DEPENDS=		::net/fping

ALL_TARGET=
REGRESS_TARGET=		test

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/shmux
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/shmux

.include <bsd.port.mk>
