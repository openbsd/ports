# $OpenBSD: Makefile,v 1.21 2010/12/03 11:44:22 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl extension for Ogg Vorbis streams

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
REVISION=		2
CATEGORIES=		audio

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ogg vorbis>=1 vorbisfile>=2

MODULES=		cpan
CPAN_AUTHOR=		FOOF
USE_GROFF =		Yes

LIB_DEPENDS=		audio/libvorbis

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
