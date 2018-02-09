# $OpenBSD: Makefile,v 1.26 2018/02/09 12:38:34 jca Exp $

COMMENT =		authoritative DNS server

DISTNAME =		knot-2.6.4

SHARED_LIBS +=	zscanner             1.0      # .1.0
SHARED_LIBS +=	knot                 2.0      # .7.0
SHARED_LIBS +=	dnssec               1.0      # .5.0

CATEGORIES =		net

HOMEPAGE =		https://www.knot-dns.cz/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses edit ffi gmp gnutls hogweed iconv idn2 intl
WANTLIB += m nettle p11-kit pthread tasn1 unistring urcu urcu-common
WANTLIB += z

MASTER_SITES =		https://secure.nic.cz/files/knot-dns/
EXTRACT_SUFX =		.tar.xz

# atomics
COMPILER =		base-clang ports-gcc ports-clang
COMPILER_LANGS =	c

MODULES =		lang/python
# XXX pykeymgr requires py-lmdb (python-lmdb)
MODPY_RUNDEP =		No
MODPY_ADJ_FILES =	src/utils/pykeymgr/pykeymgr.in

BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		devel/gettext \
			devel/libidn2 \
			devel/liburcu \
			security/gnutls

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-storage=${LOCALSTATEDIR}/db/knot \
			--with-libidn \
			--disable-dnstap
# Disable workaround for old clang versions.
CONFIGURE_ARGS +=	--enable-fastparser=force

CONFIGURE_ENV =		ac_cv_path_PDFLATEX="false" \
			ac_cv_path_SPHINXBUILD="false"

.if ${MACHINE_ARCH} == "i386"
CFLAGS += -march=i586
.endif

post-extract:
	# Workaround symbol conflict somehow avoided by GNU libtool
	sed -i 's/net_send/contrib_&/g' ${WRKSRC}/tests/contrib/test_net.c
	sed -i 's/net_send/contrib_&/g' ${WRKSRC}/src/contrib/net.[ch]

post-install:
	mv ${WRKINST}/etc/knot/ ${PREFIX}/share/examples/knot/

.include <bsd.port.mk>
