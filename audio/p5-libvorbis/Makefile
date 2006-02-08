# $OpenBSD: Makefile,v 1.9 2006/02/08 04:54:48 david Exp $

SHARED_ONLY=		Yes

COMMENT=		"Perl extension for Ogg Vorbis streams"

V=			0.04
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}p0
CATEGORIES=		audio perl5

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ogg

MASTER_SITES=		http://synthcode.com/code/vorbis/

LIB_DEPENDS=		vorbis.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE=	perl

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
