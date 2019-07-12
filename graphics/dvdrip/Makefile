# $OpenBSD: Makefile,v 1.24 2019/07/12 20:46:58 sthen Exp $

PORTROACH=	skipv:0.98.11_01

COMMENT=	full featured DVD copy program

VERSION=	0.98.11
REVISION=	4
DISTNAME=	dvdrip-${VERSION}
CATEGORIES=	graphics audio multimedia perl5

HOMEPAGE=	http://www.exit1.org/dvdrip/

# Artistic and GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.exit1.org/dvdrip/dist/

RUN_DEPENDS=	graphics/ImageMagick \
		devel/desktop-file-utils \
		devel/p5-Event-ExecFlow \
		multimedia/transcode \
		multimedia/subtitleripper \
		multimedia/xine-ui \
		net/fping \
		net/p5-Event-RPC \
		x11/p5-Gtk2-Ex-FormFactory \
		multimedia/ogmtools \
		multimedia/lsdvd>=0.15 \
		x11/gtk+3,-guic
BUILD_DEPENDS=	devel/p5-Event-ExecFlow \
		net/p5-Event-RPC \
		x11/p5-Gtk2-Ex-FormFactory

CONFIGURE_STYLE=perl
CONFIGURE_ENV=	SKIP_UNPACK_REQUIRED_MODULES=1

TEST_DEPENDS=x11/p5-Gtk2-Ex-FormFactory
TEST_FLAGS=	HOME=${TMPDIR}

pre-build:
	@sed -i "s,/usr/sbin/fping,${LOCALBASE}/sbin/fping,g" \
		${WRKSRC}/lib/Video/DVDRip/Cluster/Master.pm \
		${WRKSRC}/lib/Video/DVDRip/Depend.pm

post-install:
	mv ${PREFIX}/${P5SITE}/LocaleData ${PREFIX}/share/locale
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dvdrip.desktop ${PREFIX}/share/applications
	rm -f ${PREFIX}/${P5SITE}/Video/DVDRip/Config.pm.orig
	rm -f ${PREFIX}/${P5SITE}/Video/DVDRip/GUI/Project/Title.pm.orig
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/dvdrip-icon-hq.svg ${PREFIX}/share/icons/hicolor/scalable/apps/dvdrip.svg

.include <bsd.port.mk>
