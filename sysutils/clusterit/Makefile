# $OpenBSD: Makefile,v 1.6 2009/08/10 06:34:29 kili Exp $

COMMENT=		suite of clustering tools based on IBM's PSSP

DISTNAME=		clusterit-2.5
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils

HOMEPAGE=		http://www.garbled.net/clusterit.html

MAINTAINER=		Will Maier <willmaier@ml1.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=clusterit/}

CONFIGURE_STYLE=	gnu

FLAVORS=		no_x11
FLAVOR?=

X11_SUBDIRS=		dvt rvt

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS=		--without-x11
.else
USE_X11=		Yes
WANTLIB+=		X11 pthread-stubs util xcb
MAKE_FLAGS=		EXTRA_SUBDIRS="${X11_SUBDIRS}"
.endif

# The port's existing regress structure seems broken; upstream contacted
NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clusterit
	${INSTALL_DATA} ${WRKSRC}/html/clusterit.html \
		${PREFIX}/share/doc/clusterit/
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${PREFIX}/share/doc/clusterit

.include <bsd.port.mk>
