# $OpenBSD: Makefile,v 1.30 2013/07/19 11:57:54 jasper Exp $

COMMENT=	speech synthesizer
DISTNAME=	rsynth-2.0
REVISION=	2
CATEGORIES=	audio
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=		c gdbm m sndio

FAKE_FLAGS=		PREFIX=${WRKINST}${PREFIX}

LIB_DEPENDS=	databases/gdbm

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS=	`$(CC) -dumpmachine`
SEPARATE_BUILD=	Yes

pre-configure:
	@cp ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c

post-install:
	mv ${PREFIX}/bin/say ${PREFIX}/bin/rsay

.include <bsd.port.mk>
