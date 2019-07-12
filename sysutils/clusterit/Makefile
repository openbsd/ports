# $OpenBSD: Makefile,v 1.18 2019/07/12 20:49:40 sthen Exp $

COMMENT=		suite of clustering tools based on IBM's PSSP

DISTNAME=		clusterit-2.5
PKGNAME=		${DISTNAME}
REVISION =		4
CATEGORIES=		sysutils

HOMEPAGE=		http://www.garbled.net/clusterit.html

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c curses
USE_X11 =		Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clusterit/}

CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

X11_SUBDIRS=		dvt rvt

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--without-x11
.else
WANTLIB+=		X11 util xcb
MAKE_FLAGS=		EXTRA_SUBDIRS="${X11_SUBDIRS}"
.endif

# The port's existing regress structure seems broken; upstream contacted
NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clusterit
	${INSTALL_DATA} ${WRKSRC}/html/clusterit.html \
		${PREFIX}/share/doc/clusterit/
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/clusterit

.include <bsd.port.mk>
