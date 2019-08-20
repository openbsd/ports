# $OpenBSD: Makefile,v 1.25 2019/08/20 09:59:59 sthen Exp $

COMMENT=		SysV mail/BSD Mail/POSIX mailx: send and receive mail

DISTNAME=		s-nail-14.9.15
CATEGORIES=		mail
HOMEPAGE=		https://www.sdaoden.eu/code.html\#s-mailx

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto curses iconv ssl

MASTER_SITES=		https://ftp.sdaoden.eu/
MAINTAINER=		Steffen Nurpmeso <steffen@sdaoden.eu>

FLAVORS=		idna
FLAVOR?=

PORTHOME=		${WRKDIR}
MAKE_FILE=		makefile
MAKE_FLAGS=		CC="${CC}" \
			C_INCLUDE_PATH="${LOCALBASE}/include" \
			LD_LIBRARY_PATH="${LOCALBASE}/lib" \
			VAL_MANDIR="${PREFIX}/man" \
			VAL_SYSCONFDIR="${SYSCONFDIR}" \
			VAL_SID= \
			OPT_ALWAYS_UNICODE_LOCALE=yes \
			OPT_AGENT=no \
			OPT_AUTOCC=no \
			OPT_DOTLOCK=no \
			OPT_GSSAPI=no \
			VAL_RANDOM=arc4

.if ${FLAVOR:Midna}
WANTLIB+=		idn2
LIB_DEPENDS+=		devel/libidn2
MAKE_FLAGS+=		OPT_IDNA=yes \
			VAL_IDNA=idn2
.else
MAKE_FLAGS+=		OPT_IDNA=no
.endif

.if !empty(DEBUG)
MAKE_FLAGS+=		OPT_DEBUG=yes
FAKE_FLAGS+=		OPT_DEBUG=yes
.endif

MAKE_ENV=		VERBOSE=Yes

LIB_DEPENDS=		converters/libiconv

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nail
	mv ${DESTDIR}${SYSCONFDIR}/nail.rc ${PREFIX}/share/examples/nail

.include <bsd.port.mk>
