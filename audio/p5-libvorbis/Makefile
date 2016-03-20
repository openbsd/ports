# $OpenBSD: Makefile,v 1.28 2016/03/20 19:56:07 naddy Exp $

COMMENT=		Perl extension for Ogg Vorbis streams

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
REVISION=		5
CATEGORIES=		audio

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ogg perl vorbis>=1 vorbisfile>=2

MODULES=		cpan
CPAN_AUTHOR=		FOOF

LIB_DEPENDS=		audio/libvorbis

pre-configure:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
