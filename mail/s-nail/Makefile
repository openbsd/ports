# $OpenBSD: Makefile,v 1.10 2015/01/03 18:00:47 jca Exp $

COMMENT=		enhanced, MIME capable Berkeley Mail

DISTNAME=		s-nail-14.7.10
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
			SYSCONFDIR="${SYSCONFDIR}" \
			WANT_EDITLINE=1
MAKE_ENV=		VERBOSE=Yes

LIB_DEPENDS=		devel/libidn

INSTALL_TARGET=		packager-install
NO_TEST=		Yes

post-install:
	ln -sf ${TRUEPREFIX}/bin/s-nail ${PREFIX}/bin/nail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/s-nail
	mv ${DESTDIR}${SYSCONFDIR}/s-nail.rc ${PREFIX}/share/examples/s-nail

.include <bsd.port.mk>
