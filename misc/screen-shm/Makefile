# $OpenBSD: Makefile,v 1.2 2019/09/06 13:28:32 sthen Exp $

COMMENT=	multi-screen window manager, with shm support for brltty

# updates depend on availability of patches, not of updates to screen itself
PORTROACH=	ignore:1

DISTNAME=	screen-4.0.3
REVISION=	8
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU:=screen/}

HOMEPAGE=	https://www.gnu.org/software/screen/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses util

AUTOCONF_VERSION=2.57
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"
USE_GROFF=	Yes

FLAVORS=	shm
FLAVOR?=	shm

ALL_TARGET=	screen screen.info

pre-build:
	${SUBST_CMD} ${WRKSRC}/doc/screen.1

post-install:
	@cd ${PREFIX}/bin && mv -f screen-* screen
	@chmod 755 ${PREFIX}/bin/screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc

.include <bsd.port.mk>
