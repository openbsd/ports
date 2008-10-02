# $OpenBSD: Makefile,v 1.15 2008/10/02 20:31:16 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl extension for Ogg Vorbis streams

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}p0
CATEGORIES=		audio

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ogg

MODULES=		cpan
CPAN_AUTHOR=		FOOF

LIB_DEPENDS=		vorbis.>=1,vorbisfile.>=2::audio/libvorbis

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
