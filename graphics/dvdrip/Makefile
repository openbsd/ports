# $OpenBSD: Makefile,v 1.6 2005/11/27 10:54:10 sturm Exp $

COMMENT=	"full featured DVD copy program"

VERSION=	0.50.18
PKGNAME=	dvdrip-${VERSION}p1
DISTNAME=	Video-DVDRip-${VERSION}
CATEGORIES=	graphics audio perl5

HOMEPAGE=	http://www.exit1.org/dvdrip/

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.exit1.org/dvdrip/dist/	

RUN_DEPENDS=	::graphics/ImageMagick \
		::multimedia/transcode \
		::devel/p5-Event \
		::net/fping \
		::x11/p5-Gtk

CONFIGURE_STYLE=perl

REGRESS_DEPENDS=::x11/p5-Gtk
REGRESS_FLAGS=	HOME=${TMPDIR}

pre-build:
	@perl -pi -e "s,/usr/sbin/fping,${LOCALBASE}/sbin/fping,g" \
		${WRKSRC}/lib/Video/DVDRip/Cluster/Master.pm \
		${WRKSRC}/lib/Video/DVDRip/Depend.pm

.include <bsd.port.mk>
