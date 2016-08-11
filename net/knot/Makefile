# $OpenBSD: Makefile,v 1.11 2016/08/11 12:04:17 jca Exp $

PORTROACH =		limit:^1\.
PORTROACH_COMMENT =	knot-2.x uses __thread and lmdb

COMMENT =		authoritative DNS server

DISTNAME =		knot-1.6.8

SHARED_LIBS +=  zscanner             0.0      # .0.1
SHARED_LIBS +=  knot                 0.0      # .0.1

CATEGORIES =		net

HOMEPAGE =		https://www.knot-dns.cz/

MAINTAINER =		Pierre Emeriaud <petrus.lt+openbsd@gmail.com>, \
			Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto idn m pthread urcu urcu-common z

MASTER_SITES =		https://secure.nic.cz/files/knot-dns/

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/bison
LIB_DEPENDS =		devel/libidn \
			devel/liburcu

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-storage=${LOCALSTATEDIR}/db/knot \
			--with-libidn \
			--disable-dnstap \
			--disable-lmdb
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_PDFLATEX="false" \
			ac_cv_path_SPHINXBUILD="false"

post-install:
	mv ${WRKINST}/etc/knot/ ${PREFIX}/share/examples/knot/

.include <bsd.port.mk>
