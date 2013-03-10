# $OpenBSD: Makefile,v 1.23 2013/03/10 22:55:05 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl extension for Ogg Vorbis streams

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
REVISION=		3
CATEGORIES=		audio

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ogg vorbis>=1 vorbisfile>=2

MODULES=		cpan
CPAN_AUTHOR=		FOOF
USE_GROFF =		Yes

LIB_DEPENDS=		audio/libvorbis

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
