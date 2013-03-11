# $OpenBSD: Makefile,v 1.14 2013/03/11 11:10:52 espie Exp $

COMMENT=	full featured DVD copy program

VERSION=	0.98.6
DISTNAME=	dvdrip-${VERSION}
REVISION =	0
CATEGORIES=	graphics audio multimedia perl5

HOMEPAGE=	http://www.exit1.org/dvdrip/

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.exit1.org/dvdrip/dist/

RUN_DEPENDS=	graphics/ImageMagick \
		devel/p5-Event-ExecFlow \
		multimedia/transcode \
		net/fping \
		net/p5-Event-RPC \
		x11/p5-Gtk2-Ex-FormFactory \
		multimedia/ogmtools \
		multimedia/lsdvd>=0.15
BUILD_DEPENDS=	devel/p5-Event-ExecFlow \
		net/p5-Event-RPC \
		x11/p5-Gtk2-Ex-FormFactory

CONFIGURE_STYLE=perl
USE_GROFF =	Yes
CONFIGURE_ENV=	SKIP_UNPACK_REQUIRED_MODULES=1

TEST_DEPENDS=x11/p5-Gtk2-Ex-FormFactory
TEST_FLAGS=	HOME=${TMPDIR}

pre-build:
	@perl -pi -e "s,/usr/sbin/fping,${LOCALBASE}/sbin/fping,g" \
		${WRKSRC}/lib/Video/DVDRip/Cluster/Master.pm \
		${WRKSRC}/lib/Video/DVDRip/Depend.pm

post-install:
	mv ${PREFIX}/${P5SITE}/LocaleData ${PREFIX}/share/locale

.include <bsd.port.mk>
