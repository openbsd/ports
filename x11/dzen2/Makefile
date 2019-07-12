# $OpenBSD: Makefile,v 1.9 2019/07/12 20:51:09 sthen Exp $

COMMENT-main=	general purpose messaging, notification and menu program
COMMENT-gadgets=gadgets and scripts for dzen2

GH_COMMIT=		488ab66019f475e35e067646621827c18a879ba1
GH_ACCOUNT=		robm
GH_PROJECT=		dzen
V=			0.9.5
REVISION=		2

DISTNAME=		dzen2-$V
PKGNAME-main=		${DISTNAME}
PKGNAME-gadgets=	dzen2-gadgets-$V

CATEGORIES=		x11

HOMEPAGE=		https://github.com/robm/dzen
MAINTAINER=		Dmitri Alenichev <mitya@rockers.su>

MULTI_PACKAGES=		-main -gadgets

# MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 c Xinerama Xpm

RUN_DEPENDS-gadgets=	x11/dzen2

FLAVORS=		xft
FLAVOR?=

.if ${FLAVOR:Mxft}
WANTLIB+=		Xft
XFT_CFLAGS=		-DDZEN_XFT `pkg-config --cflags xft`
XFT_LDFLAGS=		`pkg-config --libs xft`
.endif

MAKE_FLAGS=		CC=${CC} \
			CFLAGS="${CFLAGS} -I${X11BASE}/include \
				-DVERSION=\\\"$V\\\" -DDZEN_XINERAMA \
				-DDZEN_XPM ${XFT_CFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -lX11 \
				-lXinerama -lXpm ${XFT_LDFLAGS}" \
			X11LIB=${X11BASE}/lib

GADGETS=		dbar gdbar gcpubar textwidth

NO_TEST=		Yes

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
