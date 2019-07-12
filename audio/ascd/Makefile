# $OpenBSD: Makefile,v 1.32 2019/07/12 20:43:31 sthen Exp $

COMMENT=		cd player for Afterstep or Window Maker
DISTNAME=		ascd-0.13.2
REVISION=		5
CATEGORIES=		audio x11 x11/windowmaker
FIX_EXTRACT_PERMISSIONS=Yes

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c workman>=1

MASTER_SITES=		https://spacehopper.org/mirrors/
DISTFILES=		${DISTNAME}-src.tgz ${DATAFILES}
DATAFILES=		ascd-0.13pr6-themes.tgz

LIB_DEPENDS=		audio/libworkman

NO_TEST=		Yes
CONFIGURE_STYLE=	imake

post-extract:
	rm -r ${WRKSRC}/workman

pre-configure:
	@sed -e "s:%%PREFIX%%:${PREFIX}:g" \
		${WRKSRC}/misc/config.h.default > ${WRKSRC}/config.h
	@sed -e "s:%%PREFIX%%:${PREFIX}:g" \
		${WRKSRC}/misc/dirs.h.default > ${WRKSRC}/dirs.h
	@cat ${WRKSRC}/version.h >> ${WRKSRC}/config.h

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/AScd
	tar xfC ${WRKSRC}/themes/default.tar ${PREFIX}/share/AScd/
	tar xfC ${WRKSRC}/themes/themes.tar ${PREFIX}/share/AScd/
	tar xfC ${WRKDIR}/ascd-0.13pr6-themes/themes.tar ${PREFIX}/share/AScd/Themes

.include <bsd.port.mk>
