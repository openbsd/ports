# $OpenBSD: Makefile,v 1.1.1.1 2015/04/12 16:07:13 jca Exp $

COMMENT =		authoritative DNS server

DISTNAME =		knot-1.6.2

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
BUILD_DEPENDS =		devel/bison \
			devel/flex
LIB_DEPENDS =		devel/libidn \
			devel/liburcu

USE_GMAKE =		Yes
USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-storage=/var/db/knot \
			--with-libidn \
			--without-dnstap \
			--without-lmdb
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_PDFLATEX="false" \
			ac_cv_path_SPHINXBUILD="false"

post-install:
	mv ${WRKINST}/etc/knot/ ${PREFIX}/share/examples/knot/

.include <bsd.port.mk>
