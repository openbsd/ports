# $OpenBSD: Makefile,v 1.71 2019/09/05 11:50:48 sthen Exp $

COMMENT=	multi-screen window manager

VERSION=	4.0.3
DISTNAME=	screen-${VERSION}
REVISION=	8
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU:=screen/}

HOMEPAGE=	https://www.gnu.org/software/screen/

# GPLv2+
PERMIT_PACKAGE=	Yes

SUBST_VARS=	VERSION

AUTOCONF_VERSION=2.57
CONFIGURE_STYLE= autoconf no-autoheader
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"
USE_GROFF =	Yes

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR} == "static"
CONFIGURE_ENV=	LDFLAGS="${STATIC}"
.else
WANTLIB=	c curses util
.endif

ALL_TARGET=	screen screen.info

pre-build:
	@perl -pi -e s#!!sysconfdir!!#${SYSCONFDIR}#g ${WRKSRC}/doc/screen.1

post-install:
	@cd ${PREFIX}/bin && mv -f screen-${VERSION} screen
	@chmod 755 ${PREFIX}/bin/screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
		${PREFIX}/share/examples/screen/screenrc

.include <bsd.port.mk>
