# $OpenBSD: Makefile,v 1.2 2002/05/02 17:09:03 naddy Exp $

COMMENT=		"Perl extension for Ogg Vorbis streams"

V=			0.04
DISTNAME=		libvorbis-perl-${V}
PKGNAME=		p5-libvorbis-${V}
CATEGORIES=		audio perl5
NEED_VERSION=		1.525

MAINTAINER=		Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://synthcode.com/code/vorbis/

LIB_DEPENDS=		vorbis.1,vorbisenc.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE=	perl

post-patch:
	@perl -i -p -e 's#/usr/local#${LOCALBASE}#' ${WRKDIST}/Makefile.PL

.include <bsd.port.mk>
