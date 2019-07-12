# $OpenBSD: Makefile,v 1.61 2019/07/12 20:49:46 sthen Exp $

COMMENT=	read/write/list/format DOS disks under Unix
DISTNAME=	mtools-4.0.23

CATEGORIES=	sysutils

HOMEPAGE=	http://mtools.linux.lu/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_GNU:=mtools/}

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes

FLAVORS=	no_x11
FLAVOR?=

FAKE_FLAGS=	INSTALL_PROGRAM="${INSTALL_PROGRAM}"

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--with-x=no
.else
WANTLIB+=		X11 Xau
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mtools/
	${INSTALL_DATA} ${WRKSRC}/mtools.conf ${PREFIX}/share/examples/mtools/

.include <bsd.port.mk>
