# $OpenBSD: Makefile,v 1.13 2013/03/10 22:55:06 espie Exp $

COMMENT=		wm-dockapp; audio mixer

DISTNAME=		wmix-3.0
REVISION=		1
CATEGORIES=		audio x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c m ossaudio

MASTER_SITES=		${HOMEPAGE}software/

MAKE_ENV=		CC="${CC}"
USE_GROFF =		Yes
NO_TEST =		Yes

ALL_TARGET=		wmix

DOCS=			README
DOCDIR=			${PREFIX}/share/doc/wmix
SAMPLES=		sample.wmixrc
SAMPLE_DIR=		${PREFIX}/share/examples/wmix
SUBST_VARS+=		SAMPLE_DIR

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR} ${SAMPLE_DIR}
	cd ${WRKSRC} && \
		${INSTALL_DATA} ${DOCS} ${DOCDIR} && \
		${INSTALL_DATA} ${SAMPLES} ${SAMPLE_DIR}

.include <bsd.port.mk>
