# $OpenBSD: Makefile,v 1.17 2001/04/13 03:24:20 obecian Exp $

COMMENT=	"speech synthesizer"
DISTNAME=	rsynth-2.0
CATEGORIES=	audio
NEED_VERSION=	1.364
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=		PREFIX=${WRKINST}${PREFIX}

LIB_DEPENDS=	gdbm.::databases/gdbm

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS=	`$(CC) -dumpmachine`
SEPARATE_BUILD=	simple

pre-configure:
	@cp ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c

.include <bsd.port.mk>
