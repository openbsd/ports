# $OpenBSD: Makefile,v 1.2 2002/01/26 14:14:53 wilfried Exp $

COMMENT=		'wm-dockapp; audio mixer'

DISTNAME=		wmix-3.0
CATEGORIES=		audio x11 x11/windowmaker
NEED_VERSION=		1.504

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Han Boetes <han@mijncomputer.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}software/

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
