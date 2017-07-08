# $OpenBSD: Makefile,v 1.23 2017/07/08 07:02:57 jasper Exp $

COMMENT=		client for MPD to submit tracks to Last.fm
CATEGORIES=		audio
DISTNAME=		scmpc-0.4.1
REVISION=		0

HOMEPAGE=		http://cmende.github.io/scmpc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c confuse curl glib-2.0 mpdclient pthread

MASTER_SITES=		https://bitbucket.org/cmende/scmpc/downloads/

MODULES+=		devel/gettext

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		devel/glib2 \
			audio/libmpdclient \
			devel/libconfuse \
			net/curl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scmpc/
	${INSTALL_DATA} ${WRKSRC}/scmpc.conf.example \
		${PREFIX}/share/examples/scmpc/

.include <bsd.port.mk>
