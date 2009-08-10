# $OpenBSD: Makefile,v 1.13 2009/08/10 06:31:45 kili Exp $

COMMENT=			3D image rendering package

DISTNAME=			povray-3.1g
PKGNAME=			${DISTNAME}p1
CATEGORIES=			graphics

HOMEPAGE=			http://www.povray.org

PERMIT_PACKAGE_CDROM=		Perhaps we qualify for commercial distribution
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Our CDs are not too expensive, see povlegal.doc but I think we should ask them anyway
PERMIT_DISTFILES_FTP=		Yes
WANTLIB=			c m z

MASTER_SITES=			ftp://mirror.nucba.ac.jp/mirror/povray/Old-Versions/Official-3.1g/Unix/ \
				ftp://ftp.povray.org/pub/povray/Old-Versions/Official-3.1g/Unix/

DISTFILES=			povuni_s.tgz povuni_d.tgz
DIST_SUBDIR=			${DISTNAME}

LIB_DEPENDS=			png.>=2.::graphics/png

FLAVORS=			no_x11
FLAVOR?=

MAKE_FILE=			makefile
WRKDIST=			${WRKDIR}/povray31/source/unix

.if !${FLAVOR:L:Mno_x11}
ALL_TARGET=                     newxwin
USE_X11=			Yes
WANTLIB+=			X11 pthread-stubs xcb
.endif
ALL_TARGET+=			newunix

pre-configure:
	@perl -i -p -e "s#/usr/local/lib#${PREFIX}/share#" ${WRKDIR}/povray31/povray.ini

NO_REGRESS=			Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/povray ${PREFIX}/bin
.if !${FLAVOR:L:Mno_x11}
	${INSTALL_PROGRAM} ${WRKDIST}/x-povray ${PREFIX}/bin
.endif
	${INSTALL_MAN} ${WRKDIST}/povray.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/povray31
	cp -R ${WRKDIR}/povray31/allscene ${WRKDIR}/povray31/include \
		${WRKDIR}/povray31/scenes ${PREFIX}/share/povray31
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/povray31
	find ${PREFIX}/share/povray31 -type d | xargs chmod ${DIRMODE}
	find ${PREFIX}/share/povray31 -type f | xargs chmod ${SHAREMODE}
	${INSTALL_DATA} ${WRKDIR}/povray31/allscene.ini \
		${WRKDIR}/povray31/allscene.sh ${WRKDIR}/povray31/pngflc.ini \
		${WRKDIR}/povray31/pngfli.ini ${WRKDIR}/povray31/povray.ini \
		${WRKDIR}/povray31/rerunpov.sh ${WRKDIR}/povray31/res.ini \
		${WRKDIR}/povray31/res120.ini ${WRKDIR}/povray31/res1k.ini \
		${WRKDIR}/povray31/res320.ini ${WRKDIR}/povray31/res640.ini \
		${WRKDIR}/povray31/res800.ini ${WRKDIR}/povray31/runpov.sh \
		${WRKDIR}/povray31/shapes.pov ${WRKDIR}/povray31/slow.ini \
		${WRKDIR}/povray31/tgaflc.ini ${WRKDIR}/povray31/tgafli.ini \
		${WRKDIR}/povray31/xpovicon.xpm ${WRKDIR}/povray31/zipflc.ini \
		${WRKDIR}/povray31/zipfli.ini ${PREFIX}/share/povray31
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/povray31
	${INSTALL_DATA} ${WRKDIR}/povray31/README.unix \
		${WRKDIR}/povray31/betanews.txt ${WRKDIR}/povray31/gamma.gif \
		${WRKDIR}/povray31/gamma.gif.txt \
		${WRKDIR}/povray31/povlegal.doc \
		${WRKDIR}/povray31/povuser.txt \
		${WRKDIR}/povray31/povwhere.get\
		${WRKDIR}/povray31/revision.doc ${PREFIX}/share/doc/povray31

.include <bsd.port.mk>
