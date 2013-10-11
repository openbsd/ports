# $OpenBSD: Makefile,v 1.28 2013/10/11 23:48:03 naddy Exp $

COMMENT=		minimalistic console-based audio player

DISTNAME=		herrie-2.2
REVISION=		2
CATEGORIES=		audio

HOMEPAGE=		http://herrie.info/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ncurses ogg pthread mad>=2 id3tag>=3 sndfile>=1
WANTLIB += vorbis>=5 vorbisfile>=4 glib-2.0>=1000 gthread-2.0>=1000
WANTLIB += curl>=9 ao

MODULES=		devel/gettext

MASTER_SITES=		${HOMEPAGE}/distfiles/ \
			http://www.stack.nl/~ed/projects/herrie/distfiles/ \
			http://www.il.fontys.nl/~ed/projects/herrie/distfiles/

LIB_DEPENDS=		audio/libmad \
			audio/libid3tag \
			audio/libsndfile \
			audio/libvorbis \
			devel/glib2 \
			net/curl \
			audio/libao>=0.8.8p1

CONFIGURE_STYLE=	simple
CONFIGURE_ENV+= 	CONFDIR=${SYSCONFDIR} \
			PREFIX=${PREFIX} \
			LDFLAGS="-lvorbis -logg" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include"
CONFIGURE_ARGS= 	ncurses \
			no_modplug \
			no_strip \
			no_xspf \
			verbose \
			ao

NO_TEST=		Yes

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
