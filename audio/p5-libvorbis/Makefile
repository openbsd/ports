# $OpenBSD: Makefile,v 1.1.1.1 2002/02/04 15:00:29 naddy Exp $

COMMENT=		"Perl extension for Ogg Vorbis streams"

V=			0.03-1
DISTNAME=		libvorbis-perl_${V}
PKGNAME=		p5-libvorbis-${V:S/-/./}
CATEGORIES=		audio perl5
NEED_VERSION=		1.504

MAINTAINER=		Nikolay Sturm <nikolay.sturm@desy.de>

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	../by-authors/id/F/FO/FOOF/

LIB_DEPENDS=		vorbis.1,vorbisenc.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE=	perl

WRKDIST=		${WRKDIR}/libvorbis-perl-${V:S/-1//}

post-patch:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
