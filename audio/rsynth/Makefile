# $OpenBSD: Makefile,v 1.14 2000/06/10 17:39:22 espie Exp $

DISTNAME=	rsynth-2.0
CATEGORIES=	audio
NEED_VERSION=	1.301
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
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
