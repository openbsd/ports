# $OpenBSD: Makefile,v 1.32 2014/09/07 18:11:07 jasper Exp $
COMMENT=	enhanced talk that allows for multiple parties

DISTNAME=	ytalk-3.1.1
REVISION=	2
CATEGORIES=	net

MASTER_SITES=	http://distfiles.nl/

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses 

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf dest

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+= --without-x
.else
WANTLIB+=	ICE SM X11 pthread-stubs xcb
.endif

NO_TEST=	Yes

INSTALL_TARGET=	install.bin install.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ytalk
	${INSTALL_DATA} ${WRKBUILD}/ytalkrc ${PREFIX}/share/examples/ytalk/ytalkrc-sample

.include <bsd.port.mk>
