# $OpenBSD: Makefile,v 1.13 2000/04/08 17:30:15 espie Exp $

DISTNAME=	rsynth-2.0
CATEGORIES=	audio
NEED_VERSION=	1.230
MASTER_SITES=	ftp://svr-ftp.eng.cam.ac.uk/pub/comp.speech/synthesis/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes
FAKE_FLAGS=		PREFIX=${WRKINST}${PREFIX}

LIB_DEPENDS=	gdbm.::databases/gdbm

CONFIGURE_ENV=LDFLAGS=-L${LOCALBASE}/lib CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ARGS=`$(CC) -dumpmachine`
USE_AUTOCONF=	Yes
SEPARATE_BUILD=	Yes


pre-configure:
	@cp ${FILESDIR}/openbsdplay.c ${WRKSRC}/config/openbsdplay.c

.include <bsd.port.mk>
