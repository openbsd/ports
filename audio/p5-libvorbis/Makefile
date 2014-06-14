# $OpenBSD: Makefile,v 1.25 2014/06/14 23:23:12 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl extension for Ogg Vorbis streams

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
REVISION=		4
CATEGORIES=		audio

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ogg vorbis>=1 vorbisfile>=2

MODULES=		cpan
CPAN_AUTHOR=		FOOF

LIB_DEPENDS=		audio/libvorbis

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
