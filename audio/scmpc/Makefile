# $OpenBSD: Makefile,v 1.17 2011/05/15 14:56:50 jasper Exp $

COMMENT=		client for MPD to submit tracks to Last.fm
CATEGORIES=		audio
DISTNAME=		scmpc-0.3.1

HOMEPAGE=		http://cmende.github.com/scmpc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c confuse curl glib-2.0

MASTER_SITES=		https://github.com/downloads/cmende/scmpc/

# XXX: Still needed?
#MODULES=		gcc3
#MODGCC3_ARCHES= 	sparc
#MODGCC3_LANGS=		c

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
