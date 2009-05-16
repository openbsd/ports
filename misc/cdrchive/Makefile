# $OpenBSD: Makefile,v 1.18 2009/05/16 13:39:10 jim Exp $

COMMENT=		Qt-based CD creation tool

PKGNAME=		${DISTNAME:S/-OpenBSD//}p1
DISTNAME=		cdrchive-1.0.1-OpenBSD
CATEGORIES=		misc x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m stdc++

MASTER_SITES=		http://spacehopper.org/mirrors/

MODULES=		x11/qt2

RUN_DEPENDS=		:cdrtools-*:sysutils/cdrtools

SEPARATE_BUILD=		concurrent

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--datadir=${PREFIX}/share/doc/cdrchive \
			--x-includes=${X11BASE}/include \
			--x-libraries=${X11BASE}/lib \
			--with-extra-includes=${LOCALBASE}/include \
			--with-extra-libs=${LOCALBASE}/lib \
			${MODQT_CONFIGURE_ARGS}
MAKE_FLAGS=		CFLAGS="${CXXFLAGS} -c" CLFLAGS=""

WRKDIST=		${WRKDIR}/cdr-bsd

USE_X11=		Yes

NO_REGRESS=		Yes

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cdrchive
		${INSTALL_DATA} ${WRKBUILD}/cdr.conf \
			${PREFIX}/share/examples/cdrchive/cdr.conf.sample

.include <bsd.port.mk>
