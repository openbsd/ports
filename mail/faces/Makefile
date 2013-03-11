# $OpenBSD: Makefile,v 1.27 2013/03/11 11:23:51 espie Exp $

COMMENT=	visual mail, user and print face server

DISTNAME=	faces-1.6.1
REVISION =	0
SHARED_LIBS=	compface	1.0
CATEGORIES=	mail

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 c pthread-stubs xcb

MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/faces/faces-1.6.1/
EXTRACT_SUFX=	.tar.Z

USE_GROFF =	Yes

WRKDIST=	$(WRKDIR)/faces

SHLIB_MAJOR=	${LIBcompface_VERSION:R}
SHLIB_MINOR=	${LIBcompface_VERSION:E}
MAKE_ENV=	SHLIB_MAJOR=${SHLIB_MAJOR} SHLIB_MINOR=${SHLIB_MINOR}

post-extract:
	@cd ${WRKSRC} && cp Makefile.dist Makefile

NO_TEST=	Yes

.include <bsd.port.mk>
