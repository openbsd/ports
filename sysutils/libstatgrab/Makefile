# $OpenBSD: Makefile,v 1.3 2010/09/13 08:54:21 landry Exp $

COMMENT=	system statistics gathering library

DISTNAME=	libstatgrab-0.15
REVISION=	1
CATEGORIES=	sysutils

HOMEPAGE=	http://www.i-scream.org/libstatgrab/

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

SHARED_LIBS=	statgrab	0.0

# LGPL/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c ncurses

MASTER_SITES=	ftp://ftp.i-scream.org/pub/i-scream/libstatgrab/ \
		ftp://ftp.uk.i-scream.org/pub/i-scream/libstatgrab/

USE_LIBTOOL=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-setgid-binaries \
		--disable-setuid-binaries \
		--disable-deprecated

.include <bsd.port.mk>
