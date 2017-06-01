# $OpenBSD: Makefile,v 1.14 2017/06/01 13:42:01 jca Exp $

COMMENT =		authoritative DNS server

DISTNAME =		knot-2.4.2

SHARED_LIBS +=	zscanner             1.0      # .1.0
SHARED_LIBS +=	knot                 1.0      # .5.0
SHARED_LIBS +=	dnssec               0.0      # .3.0

CATEGORIES =		net

HOMEPAGE =		https://www.knot-dns.cz/

MAINTAINER =		Pierre Emeriaud <petrus.lt+openbsd@gmail.com>, \
			Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses edit ffi gmp gnutls hogweed idn idn2 jansson
WANTLIB += m nettle p11-kit pthread tasn1 unistring urcu urcu-common
WANTLIB += z

MASTER_SITES =		https://secure.nic.cz/files/knot-dns/
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext
# Needs TLS emulation, and atomic builtins on arm
COMPILER =		base gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		devel/libidn \
			devel/liburcu \
			devel/jansson \
			security/gnutls

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-storage=${LOCALSTATEDIR}/db/knot \
			--with-libidn \
			--disable-dnstap

CONFIGURE_ENV =		ac_cv_path_PDFLATEX="false" \
			ac_cv_path_SPHINXBUILD="false"

post-install:
	mv ${WRKINST}/etc/knot/ ${PREFIX}/share/examples/knot/

.include <bsd.port.mk>
