# $OpenBSD: Makefile,v 1.19 2008/10/16 17:29:33 jasper Exp $

COMMENT=		minimalistic console-based audio player

DISTNAME=		herrie-2.2
CATEGORIES=		audio

HOMEPAGE=		http://herrie.info/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses ogg ossaudio pthread

MODULES=		devel/gettext

MASTER_SITES=		${HOMEPAGE}/distfiles/ \
			http://www.stack.nl/~ed/projects/herrie/distfiles/ \
			http://www.il.fontys.nl/~ed/projects/herrie/distfiles/

LIB_DEPENDS=		mad.>=2::audio/libmad \
			id3tag.>=3::audio/libid3tag \
			sndfile.>=1::audio/libsndfile \
			vorbis.>=5,vorbisfile.>=4::audio/libvorbis \
			glib-2.0.>=1000.0,gthread-2.0.>=1000.0::devel/glib2 \
			curl.>=9::net/curl

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CONFDIR=${SYSCONFDIR} \
			PREFIX=${PREFIX} \
			LDFLAGS="-lvorbis -logg"
CONFIGURE_ARGS= 	ncurses \
			no_modplug \
			no_strip \
			no_xspf \
			verbose

NO_REGRESS=		Yes

LANGS=			ca da de es fi ga nl pl pt_BR ru sv tr uk vi zh_CN

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/herrie ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/herrie.1 ${PREFIX}/man/man1
.for l in ${LANGS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/${l}/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/${l}.mo \
		${PREFIX}/share/locale/${l}/LC_MESSAGES/herrie.mo
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/herrie
	${INSTALL_DATA} ${WRKSRC}/herrie.conf.sample ${PREFIX}/share/herrie

.include <bsd.port.mk>
