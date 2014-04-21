# $OpenBSD: Makefile,v 1.14 2014/04/21 22:35:15 ajacoutot Exp $

COMMENT=		suite of clustering tools based on IBM's PSSP

DISTNAME=		clusterit-2.5
PKGNAME=		${DISTNAME}
REVISION =		2
CATEGORIES=		sysutils

HOMEPAGE=		http://www.garbled.net/clusterit.html

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c curses
USE_X11 =		Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clusterit/}

CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

X11_SUBDIRS=		dvt rvt
USE_GROFF =		Yes

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS=		--without-x11
.else
WANTLIB+=		X11 pthread-stubs util xcb
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
