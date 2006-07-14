# $OpenBSD: Makefile,v 1.11 2006/07/14 18:38:23 steven Exp $

SHARED_ONLY=		Yes

COMMENT=		"Perl extension for Ogg Vorbis streams"

V=			0.05
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
CATEGORIES=		audio perl5

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ogg

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=../../authors/id/F/FO/FOOF/}

LIB_DEPENDS=		vorbis.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE=	perl

pre-configure:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
