# $OpenBSD: Makefile,v 1.23 2018/07/15 08:36:38 espie Exp $

COMMENT=	binary-to-text file converter

DISTNAME=	ish201a5
PKGNAME=	ish-2.01a5
CATEGORIES=	converters

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB += c

MASTER_SITES=	\
	${MASTER_SITE_FREEBSD} \
	http://www.unix.gr.jp/jnetcex/soft/

MAKE_FILE=	makefile
MAKE_FLAGS=	CFLAGS="${CFLAGS}" CC="${CC}"
ALL_TARGET=	ish dispish
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; ${INSTALL_PROGRAM} ish dispish ${PREFIX}/bin

.include <bsd.port.mk>
