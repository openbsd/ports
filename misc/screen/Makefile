COMMENT=	multi-screen window manager

DISTNAME=	screen-5.0.2
CATEGORIES=	misc
SITES=		${SITE_GNU:=screen/}

HOMEPAGE=	https://www.gnu.org/software/screen/

# GPLv3+
PERMIT_PACKAGE=	Yes

# C17
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc" --disable-pam

USE_GMAKE=	Yes

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
.else
WANTLIB=	c curses util
.endif

ALL_TARGET=	screen screen.info
#MAKE_FLAGS=	OPTIONS=-DDEBUG
DEBUG_PACKAGES=	${BUILD_PACKAGES}

BUILD_DEPENDS=	print/texinfo

pre-build:
	ln -s ${LOCALBASE}/bin/gmakeinfo ${WRKDIR}/bin/makeinfo
	${SUBST_CMD} ${WRKSRC}/doc/screen.1

post-install:
	cd ${PREFIX}/bin && mv -f screen-* screen
	chmod 755 ${PREFIX}/bin/screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc

.include <bsd.port.mk>
