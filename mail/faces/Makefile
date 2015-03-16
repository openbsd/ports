# $OpenBSD: Makefile,v 1.30 2015/03/16 18:07:49 naddy Exp $

COMMENT=	visual mail, user and print face server

DISTNAME=	faces-1.6.1
REVISION=	3
SHARED_LIBS=	compface	1.0
CATEGORIES=	mail

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		X11 c pthread-stubs xcb

MASTER_SITES=	ftp://ftp.cs.indiana.edu/pub/faces/faces/faces-1.6.1/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	$(WRKDIR)/faces

SHLIB_MAJOR=	${LIBcompface_VERSION:R}
SHLIB_MINOR=	${LIBcompface_VERSION:E}
MAKE_ENV=	SHLIB_MAJOR=${SHLIB_MAJOR} SHLIB_MINOR=${SHLIB_MINOR}

post-extract:
	@cd ${WRKSRC} && cp Makefile.dist Makefile

post-install:
	chmod a+r ${PREFIX}/bin/*

NO_TEST=	Yes

.include <bsd.port.mk>
