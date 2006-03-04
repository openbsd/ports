# $OpenBSD: Makefile,v 1.10 2006/03/04 15:10:31 sturm Exp $

SHARED_ONLY=		Yes

COMMENT=		"Perl extension for Ogg Vorbis streams"

V=			0.04
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}p1
CATEGORIES=		audio perl5

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
