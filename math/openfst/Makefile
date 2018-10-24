# $OpenBSD: Makefile,v 1.12 2018/10/24 14:28:07 sthen Exp $

COMMENT =		weighted finite-state transducers library

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME =		openfst-1.3.1
REVISION =		3

SHARED_LIBS +=		fst                       0.0 # 0.0
SHARED_LIBS +=		fstscript                 0.0 # 0.0

CATEGORIES =		math devel textproc

HOMEPAGE =		http://www.openfst.org/twiki/bin/view/FST/WebHome

# Apache 2.0
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://www.openfst.org/twiki/pub/FST/FstDownload/

CONFIGURE_STYLE =	gnu
# cheat!
CONFIGURE_ENV += ac_cv_type_std__tr1__hash_long_long_unsigned_=yes

.include <bsd.port.mk>
