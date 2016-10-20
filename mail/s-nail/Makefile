# $OpenBSD: Makefile,v 1.15 2016/10/20 10:49:23 czarkoff Exp $

COMMENT=		enhanced, MIME capable Berkeley Mail

DISTNAME=		s-nail-14.8.12
CATEGORIES=		mail
HOMEPAGE=		https://www.sdaoden.eu/code.html#s-mailx

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto iconv idn ssl

MASTER_SITES=		https://www.sdaoden.eu/downloads/
MAINTAINER=		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

MAKE_FILE=		makefile
MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			C_INCLUDE_PATH="${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS}" \
			LD_LIBRARY_PATH="${LOCALBASE}/lib" \
			MANDIR="${PREFIX}/man" \
			SYSCONFDIR="${SYSCONFDIR}" \
			WANT_AUTOCC=0 \
			WANT_EDITLINE=0 \
			WANT_NCL=1 \
			WANT_DOTLOCK=0 \
			SID=

.if !empty(DEBUG)
MAKE_FLAGS+=		WANT_DEBUG=1
FAKE_FLAGS+=		WANT_DEBUG=1
.endif

MAKE_ENV=		VERBOSE=Yes

LIB_DEPENDS=		converters/libiconv \
			devel/libidn

INSTALL_TARGET=		packager-install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nail
	mv ${DESTDIR}${SYSCONFDIR}/nail.rc ${PREFIX}/share/examples/nail

.include <bsd.port.mk>
