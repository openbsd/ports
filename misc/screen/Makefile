# $OpenBSD: Makefile,v 1.63 2013/02/05 14:51:16 sthen Exp $
# Please adjust www/faq/faq15.html if updating.

COMMENT=	multi-screen window manager

VERSION=	4.0.3
DISTNAME=	screen-${VERSION}
REVISION=	3
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_GNU:=screen/}

HOMEPAGE=	http://www.gnu.org/software/screen/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	VERSION

CFLAGS+=	-Wall

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sys-screenrc="${SYSCONFDIR}/screenrc"
USE_GROFF =	Yes

FLAVORS=	static shm
FLAVOR?=

.if ${FLAVOR:L} == "static"
CONFIGURE_ENV=	LDFLAGS="-static"
.else
WANTLIB=	c curses util
.endif
.if ${FLAVOR:L} == "shm"
PATCH_LIST=	patch-* shmpatch-*
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
