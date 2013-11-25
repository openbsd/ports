# $OpenBSD: Makefile,v 1.5 2013/11/25 14:16:23 sthen Exp $

COMMENT =		weighted finite-state transducers library

# requires C++ tr1 headers
NOT_FOR_ARCHS=		${GCC3_ARCHS}

DISTNAME =		openfst-1.3.1

SHARED_LIBS +=		fst                       0.0 # 0.0
SHARED_LIBS +=		fstscript                 0.0 # 0.0

CATEGORIES =		math devel textproc

HOMEPAGE =		http://www.openfst.org/twiki/bin/view/FST/WebHome

# Apache 2.0
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c m stdc++

MASTER_SITES =		http://www.openfst.org/twiki/pub/FST/FstDownload/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
