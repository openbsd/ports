# $OpenBSD: Makefile,v 1.14 2016/09/13 16:12:14 naddy Exp $

COMMENT=		enhanced, MIME capable Berkeley Mail

DISTNAME=		s-nail-14.8.9
CATEGORIES=		mail
HOMEPAGE=		https://www.sdaoden.eu/code.html#s-mailx

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto edit iconv idn ssl termcap

MASTER_SITES=		https://www.sdaoden.eu/downloads/
MAINTAINER=		William Yodlowsky <william@openbsd.org>

MAKE_FILE=		makefile
MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			C_INCLUDE_PATH="${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS}" \
			LD_LIBRARY_PATH="${LOCALBASE}/lib" \
			MANDIR="${PREFIX}/man" \
			SYSCONFDIR="${SYSCONFDIR}" \
			WANT_AUTOCC=0 \
			WANT_EDITLINE=1 \
			WANT_NCL=0 \
			WANT_DOTLOCK=0 \
			SID=

MAKE_ENV=		VERBOSE=Yes

LIB_DEPENDS=		converters/libiconv \
			devel/libidn

INSTALL_TARGET=		packager-install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nail
	mv ${DESTDIR}${SYSCONFDIR}/nail.rc ${PREFIX}/share/examples/nail

.include <bsd.port.mk>
