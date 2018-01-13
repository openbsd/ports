# $OpenBSD: Makefile,v 1.22 2018/01/13 03:00:46 bentley Exp $

COMMENT=	binary-to-text file converter

DISTNAME=	ish201a5
PKGNAME=	ish-2.01a5
CATEGORIES=	converters

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB += c

MASTER_SITES=	\
	${_MASTER_SITE_FREEBSD} \
	http://www.unix.gr.jp/jnetcex/soft/

MAKE_FILE=	makefile
MAKE_FLAGS=	CFLAGS="${CFLAGS}" CC="${CC}"
ALL_TARGET=	ish dispish
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ish dispish ${PREFIX}/bin

.include <bsd.port.mk>
