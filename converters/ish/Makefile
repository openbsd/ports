# $OpenBSD: Makefile,v 1.24 2019/07/14 02:16:51 naddy Exp $

COMMENT=	binary-to-text file converter

DISTNAME=	ish201a5
PKGNAME=	ish-2.01a5
CATEGORIES=	converters

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

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
