COMMENT=	binary-to-text file converter

DISTNAME=	ish201a5
PKGNAME=	ish-2.01a5
REVISION=	0
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
