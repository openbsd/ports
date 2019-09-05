# $OpenBSD: Makefile,v 1.19 2019/09/05 11:50:48 sthen Exp $

COMMENT=	access software for a blind person using a braille terminal

DISTNAME=	brltty-3.6
REVISION=	4
CATEGORIES=	misc
HOMEPAGE=	http://mielke.cc/brltty
MASTER_SITES=	${HOMEPAGE}/releases/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses pthread sndio

RUN_DEPENDS=	screen-*-shm:misc/screen-shm
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-install-root=${WRKINST} \
		--with-data-directory=${LOCALBASE}/share/brltty \
		--without-flite --without-x
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/aux

NO_TEST=	Yes
SEPARATE_BUILD=	Yes

post-extract:
	@cp ${FILESDIR}/sys_pcm_sndio.h  ${WRKSRC}/Programs

post-install:
	rm -f ${PREFIX}/bin/brltty-install
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/brltty
	${INSTALL_DATA} ${WRKBUILD}/Documents/brltty.conf \
		${PREFIX}/share/doc/brltty
	${INSTALL_DATA} ${WRKSRC}/Documents/README \
		${WRKSRC}/Documents/Manual.txt \
		${WRKSRC}/Documents/Manual-HTML/Manual.html \
		${PREFIX}/share/doc/brltty
.for chapter in 1 2 3 4 5 6 7 8 9
	${INSTALL_DATA} ${WRKSRC}/Documents/Manual-HTML/Manual-${chapter}.html \
		${PREFIX}/share/doc/brltty
.endfor

.include <bsd.port.mk>
