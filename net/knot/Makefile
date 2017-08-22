# $OpenBSD: Makefile,v 1.19 2017/08/22 10:14:10 espie Exp $

COMMENT =		authoritative DNS server

DISTNAME =		knot-2.4.5
REVISION =		0

SHARED_LIBS +=	zscanner             1.0      # .1.0
SHARED_LIBS +=	knot                 1.1      # .5.0
SHARED_LIBS +=	dnssec               0.0      # .3.0

CATEGORIES =		net

HOMEPAGE =		https://www.knot-dns.cz/

MAINTAINER =		Pierre Emeriaud <petrus.lt+openbsd@gmail.com>, \
			Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses edit ffi gmp gnutls hogweed iconv idn idn2
WANTLIB += intl jansson m nettle p11-kit pthread tasn1 unistring
WANTLIB += urcu urcu-common z

MASTER_SITES =		https://secure.nic.cz/files/knot-dns/
EXTRACT_SUFX =		.tar.xz

# Needs TLS emulation, and atomic builtins on arm
COMPILER =		gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		devel/gettext \
			devel/libidn \
			devel/liburcu \
			devel/jansson \
			security/gnutls

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-storage=${LOCALSTATEDIR}/db/knot \
			--with-libidn \
			--disable-dnstap

CONFIGURE_ENV =		ac_cv_path_PDFLATEX="false" \
			ac_cv_path_SPHINXBUILD="false"

.if ${MACHINE_ARCH} == "i386"
CFLAGS += -march=i586
.endif

post-install:
	mv ${WRKINST}/etc/knot/ ${PREFIX}/share/examples/knot/

.include <bsd.port.mk>
