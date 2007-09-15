# $OpenBSD: Makefile,v 1.7 2007/09/15 23:54:16 merdely Exp $

COMMENT=	access software for a blind person using a braille terminal

SHARED_ONLY=	Yes
DISTNAME=	brltty-3.6
CATEGORIES=	misc
HOMEPAGE=	http://mielke.cc/brltty
MASTER_SITES=	${HOMEPAGE}/releases/
MAINTAINER=	Mario Lang <mlang@delysid.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses pthread

RUN_DEPENDS=	:screen-*-shm:misc/screen,shm
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-install-root=${WRKINST} \
		--with-data-directory=${LOCALBASE}/share/brltty \
		--without-flite --without-x
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/aux

NO_REGRESS=	Yes
SEPARATE_BUILD=	simple

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
