# $OpenBSD: Makefile,v 1.29 2019/07/12 20:43:39 sthen Exp $

COMMENT=		Perl extension for Ogg Vorbis streams

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
REVISION=		5
CATEGORIES=		audio

# GPL or Artistic
PERMIT_PACKAGE=	Yes

WANTLIB=		c ogg perl vorbis>=1 vorbisfile>=2

MODULES=		cpan
CPAN_AUTHOR=		FOOF

LIB_DEPENDS=		audio/libvorbis

pre-configure:
	@sed -i 's,/usr/local,${LOCALBASE},' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
