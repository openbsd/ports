# $OpenBSD: Makefile,v 1.9 2007/05/14 19:35:08 naddy Exp $

COMMENT=		"minimalistic console-based audio player"

DISTNAME=		herrie-1.5.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		audio

HOMEPAGE=		http://g-rave.nl/projects/herrie/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= 		c crypto idn ncurses ogg ossaudio pthread ssl z


MODULES=		devel/gettext

MASTER_SITES=		http://www.stack.nl/~ed/projects/herrie/distfiles/ \
			http://www.il.fontys.nl/~ed/projects/herrie/distfiles/

LIB_DEPENDS=		mad.>=2::audio/libmad \
			id3tag.>=3::audio/libid3tag \
			sndfile.>=1::audio/libsndfile \
			vorbis.>=5,vorbisfile.>=4::audio/libvorbis \
			glib-2.0.>=1000.0,gthread-2.0.>=1000.0::devel/glib2 \
			curl.>=4::net/curl

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	PREFIX=${PREFIX}
CONFIGURE_ARGS= 	no_modplug

NO_REGRESS=		Yes

LANGS=			nl tr

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/herrie ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/herrie.1 ${PREFIX}/man/man1
.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/${l}/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/${l}.mo \
		${PREFIX}/share/locale/${l}/LC_MESSAGES/herrie.mo
.endfor

.include <bsd.port.mk>
