# $OpenBSD: Makefile,v 1.1.1.1 2007/09/06 19:46:01 merdely Exp $

COMMENT-main=	general purpose messaging, notification and menu program
COMMENT-gadgets=gadgets and scripts for dzen2

V=			0.8.5
DISTNAME=		dzen2-$V
PKGNAME-main=		${DISTNAME}
PKGNAME-gadgets=	dzen2-gadgets-$V
CATEGORIES=		x11

HOMEPAGE=		http://gotmor.googlepages.com/dzen
MAINTAINER=		Dmitri Alenitchev <dma@dma.org.ru>

MULTI_PACKAGES=		-main -gadgets

# MIT/X
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB-main=		X11 c Xinerama Xpm
WANTLIB-gadgets=	X11 c

MASTER_SITES=		http://gotmor.googlepages.com/

RUN_DEPENDS-gadgets=	:dzen2-*:x11/dzen2

MAKE_FLAGS=		CC=${CC} \
			CFLAGS="${CFLAGS} -I${X11BASE}/include \
				-DVERSION=\\\"$V\\\" -DDZEN_XINERAMA \
				-DDZEN_XPM" \
			X11LIB=${X11BASE}/lib

GADGETS=		dbar gdbar gcpubar textwidth

NO_REGRESS=		Yes

post-patch:
	@perl -pi -e 's,\@DZEN\@,${LOCALBASE}/bin/dzen2,' \
		${WRKSRC}/gadgets/kittscanner.sh

post-build:
	@cd ${WRKBUILD}/gadgets && exec ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} \
		${MAKE_FLAGS} -f ${MAKE_FILE}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dzen2
	${INSTALL_DATA} ${WRKSRC}/bitmaps/* ${PREFIX}/share/pixmaps
	cd ${WRKSRC} && ${INSTALL_DATA} CREDITS LICENSE README \
		README.dzen gadgets/README.kittscanner ${PREFIX}/share/doc/dzen2
	cd ${WRKSRC}/gadgets && ${INSTALL_SCRIPT} kittscanner.sh noisyalert.sh \
		${PREFIX}/bin
.for G in ${GADGETS}
	${INSTALL_PROGRAM} ${WRKSRC}/gadgets/${G} ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/gadgets/README.${G} ${PREFIX}/share/doc/dzen2
.endfor

.include <bsd.port.mk>
