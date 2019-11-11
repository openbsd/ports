# $OpenBSD: Makefile,v 1.45 2019/11/11 16:11:19 jca Exp $

COMMENT =		authoritative DNS server

DISTNAME =		knot-2.9.0
REVISION =		0

SHARED_LIBS +=	dnssec               2.0      # .7.0
SHARED_LIBS +=	knot                 6.0      # .9.0
SHARED_LIBS +=	zscanner             1.1      # .3.0

CATEGORIES =		net

HOMEPAGE =		https://www.knot-dns.cz/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses edit ffi gmp gnutls hogweed iconv idn2 intl
WANTLIB += lmdb m nettle p11-kit pthread tasn1 unistring urcu
WANTLIB += urcu-common

MASTER_SITES =		https://secure.nic.cz/files/knot-dns/
EXTRACT_SUFX =		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# atomics
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		devel/gettext,-runtime \
			devel/libidn2 \
			devel/liburcu \
			security/gnutls \
			databases/lmdb

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-storage=${LOCALSTATEDIR}/db/knot \
			--with-libidn \
			--disable-dnstap \
			--disable-maxminddb

CONFIGURE_ENV =		ac_cv_path_PDFLATEX="false" \
			ac_cv_path_SPHINXBUILD="false" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.if ${MACHINE_ARCH} == "i386"
CFLAGS += -march=i586
.endif

post-install:
	mv ${WRKINST}/etc/knot/ ${PREFIX}/share/examples/knot/

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "ports-gcc"
# gcc-8.3.0 uses too much memory to build the fast zone parser
# (at least on sparc64)
CONFIGURE_ARGS +=	--disable-fastparser
.else
# Old clang versions choked when building the fast zone parser,
# force-enable it here.
CONFIGURE_ARGS +=	--enable-fastparser=force
.endif
