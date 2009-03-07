# $OpenBSD: Makefile,v 1.10 2009/03/07 10:40:30 stsp Exp $

COMMENT=	full featured DVD copy program

VERSION=	0.98.6
DISTNAME=	dvdrip-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics audio multimedia perl5

HOMEPAGE=	http://www.exit1.org/dvdrip/

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.exit1.org/dvdrip/dist/	

RUN_DEPENDS=	::graphics/ImageMagick \
		::devel/p5-Event-ExecFlow \
		::multimedia/transcode \
		::net/fping \
		::net/p5-Event-RPC \
		::x11/p5-Gtk2-Ex-FormFactory \
		::multimedia/ogmtools \
		:lsdvd->=0.15:multimedia/lsdvd
BUILD_DEPENDS=	::devel/p5-Event-ExecFlow \
		::net/p5-Event-RPC \
		::x11/p5-Gtk2-Ex-FormFactory

CONFIGURE_STYLE=perl
CONFIGURE_ENV=	SKIP_UNPACK_REQUIRED_MODULES=1

REGRESS_DEPENDS=::x11/p5-Gtk2-Ex-FormFactory
REGRESS_FLAGS=	HOME=${TMPDIR}

pre-build:
	@perl -pi -e "s,/usr/sbin/fping,${LOCALBASE}/sbin/fping,g" \
		${WRKSRC}/lib/Video/DVDRip/Cluster/Master.pm \
		${WRKSRC}/lib/Video/DVDRip/Depend.pm

post-install:
	mv ${PREFIX}/${P5SITE}/LocaleData ${PREFIX}/share/locale

.include <bsd.port.mk>
