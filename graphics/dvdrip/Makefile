# $OpenBSD: Makefile,v 1.1.1.1 2004/06/18 18:58:08 sturm Exp $

COMMENT=	"full featured DVD copy program"

VERSION=	0.50.18
PKGNAME=	dvdrip-${VERSION}
DISTNAME=	Video-DVDRip-${VERSION}
CATEGORIES=	graphics audio perl

HOMEPAGE=	http://www.exit1.org/dvdrip/

MAINTAINER=	Waldemar Brodkorb <wbx@openbsd.de>

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.exit1.org/dvdrip/dist/	

RUN_DEPENDS=	::graphics/ImageMagick \
		::graphics/transcode \
		::x11/p5-Gtk

CONFIGURE_STYLE=perl

REGRESS_DEPENDS=::x11/p5-Gtk
REGRESS_FLAGS=	HOME=${TMPDIR}

.include <bsd.port.mk>
