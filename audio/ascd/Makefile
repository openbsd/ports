# $OpenBSD: Makefile,v 1.4 2001/03/16 16:51:54 espie Exp $
# $FreeBSD: ports/audio/ascd/Makefile,v 1.17 2000/09/25 12:21:17 asami Exp $

COMMENT= 		cd player for Afterstep or Window Maker
DISTNAME=		ascd-0.13.2
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.361

HOMEPAGE=		http://worldserver.oleane.com/rsn/ascd-en.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://worldserver.oleane.com/rsn/Archives/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/
DISTFILES=		${DISTNAME}-src.tgz ${DATAFILES}
DATAFILES=		ascd-0.13pr6-themes.tgz

LIB_DEPENDS=		workman.1::audio/libworkman

USE_X11=		Yes
CONFIGURE_STYLE=	imake

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
