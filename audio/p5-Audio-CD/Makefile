# $OpenBSD: Makefile,v 1.7 2002/12/29 19:29:57 fgsch Exp $

COMMENT=	"interface to libcdaudio"
DISTNAME=	Audio-CD-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	audio perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Audio/}

CONFIGURE_STYLE= perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	cdaudio.1::audio/libcdaudio

.include <bsd.port.mk>
