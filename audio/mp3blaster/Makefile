# $OpenBSD: Makefile,v 1.4 2002/10/23 15:24:34 naddy Exp $

COMMENT=	"text console audio player with an interactive interface"

DISTNAME=	mp3blaster-3.1.3
CATEGORIES=	audio
HOMEPAGE=	http://www.stack.nl/~brama/mp3blaster/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}src/

LIB_DEPENDS=	sidplay.1::audio/libsidplay \
		vorbis.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	yes
CONFIGURE_ARGS=	--with-cxxflags="${CXXFLAGS}"

post-extract:
	@cd ${WRKSRC}; touch -r configure.in configure.in.stamp

post-configure:
	@cd ${WRKSRC}; touch -r configure.in.stamp configure.in

.include <bsd.port.mk>
