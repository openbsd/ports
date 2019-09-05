# $OpenBSD: Makefile,v 1.72 2019/09/05 17:35:06 sthen Exp $

COMMENT=	multi-screen window manager

DISTNAME=	screen-4.6.2
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU:=screen/}

HOMEPAGE=	https://www.gnu.org/software/screen/

# GPLv3+
PERMIT_PACKAGE=	Yes

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"
USE_GMAKE=	Yes
USE_GROFF=	Yes

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
.else
WANTLIB=	c curses util
.endif

ALL_TARGET=	screen screen.info
#MAKE_FLAGS=	OPTIONS=-DDEBUG

pre-build:
	@${SUBST_CMD} ${WRKSRC}/doc/screen.1

post-install:
	@cd ${PREFIX}/bin && mv -f screen-* screen
	@chmod 755 ${PREFIX}/bin/screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc

.include <bsd.port.mk>
