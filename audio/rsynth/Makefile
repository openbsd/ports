# $OpenBSD: Makefile,v 1.25 2009/12/24 21:45:29 jakemsr Exp $

COMMENT=	speech synthesizer
DISTNAME=	rsynth-2.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		c m sndio

FAKE_FLAGS=		PREFIX=${WRKINST}${PREFIX}

LIB_DEPENDS=	gdbm.::databases/gdbm

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS=	`$(CC) -dumpmachine`
SEPARATE_BUILD=	simple

pre-configure:
	@cp ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c

.include <bsd.port.mk>
