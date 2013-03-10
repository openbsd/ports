# $OpenBSD: Makefile,v 1.21 2013/03/10 22:55:05 espie Exp $

COMMENT=		client for MPD to submit tracks to Last.fm
CATEGORIES=		audio
DISTNAME=		scmpc-0.3.1
REVISION =		1

HOMEPAGE=		http://cmende.github.com/scmpc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c confuse curl glib-2.0

MASTER_SITES=		https://github.com/downloads/cmende/scmpc/

MODULES+=		devel/gettext

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		devel/glib2 \
			devel/libconfuse \
			net/curl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/scmpc/
	${INSTALL_DATA} ${WRKSRC}/scmpc.conf.example \
		${PREFIX}/share/examples/scmpc/

.include <bsd.port.mk>
