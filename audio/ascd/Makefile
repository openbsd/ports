# $OpenBSD: Makefile,v 1.1.1.1 2001/02/06 11:52:43 wilfried Exp $
# $FreeBSD: ports/audio/ascd/Makefile,v 1.17 2000/09/25 12:21:17 asami Exp $

DISTNAME=	ascd-0.13.2
CATEGORIES=	audio x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://worldserver.oleane.com/rsn/ascd-en.html
MASTER_SITES=	http://worldserver.oleane.com/rsn/Archives/
DISTFILES=      ${DISTNAME}-src.tgz ${DATAFILES}

DATAFILES=      ascd-0.13pr6-themes.tgz
THEMESDIR=      ascd-0.13pr6-themes

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=    workman.1::audio/libworkman

CONFIGURE_STYLE=	imake
USE_X11=	Yes

post-extract:
	@rm -rf ${WRKSRC}/workman

post-patch:
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
