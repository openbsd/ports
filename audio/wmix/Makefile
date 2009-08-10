# $OpenBSD: Makefile,v 1.8 2009/08/10 06:29:52 kili Exp $

COMMENT=		wm-dockapp; audio mixer

DISTNAME=		wmix-3.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		audio x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/


# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m ossaudio pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}software/

MAKE_ENV=		CC="${CC}"
USE_X11=		Yes
NO_REGRESS=		Yes

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
