# $OpenBSD: Makefile,v 1.12 2015/07/14 16:42:43 jca Exp $

COMMENT=		enhanced, MIME capable Berkeley Mail

DISTNAME=		s-nail-14.8.3
DISTFILES=		${DISTNAME:S/./_/g}.tar.gz
CATEGORIES=		mail
HOMEPAGE=		http://sdaoden.users.sourceforge.net/code.html#s-nail

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto edit idn ssl termcap

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=s-nail/}
MAINTAINER=		William Yodlowsky <william@openbsd.org>

MODULES=		converters/libiconv

MAKE_FILE=		makefile
MAKE_FLAGS=		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			C_INCLUDE_PATH="${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS}" \
			LD_LIBRARY_PATH=${LOCALBASE}/lib \
			MANDIR="${PREFIX}/man" \
			SYSCONFDIR="${SYSCONFDIR}" \
			WANT_AUTOCC=0 \
			WANT_EDITLINE=1 \
			WANT_PRIVSEP=0
MAKE_ENV=		VERBOSE=Yes

LIB_DEPENDS=		devel/libidn

INSTALL_TARGET=		packager-install

post-install:
	ln -sf ${TRUEPREFIX}/bin/s-nail ${PREFIX}/bin/nail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/s-nail
	mv ${DESTDIR}${SYSCONFDIR}/s-nail.rc ${PREFIX}/share/examples/s-nail

.include <bsd.port.mk>
