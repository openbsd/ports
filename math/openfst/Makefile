# $OpenBSD: Makefile,v 1.2 2013/03/11 11:23:55 espie Exp $

COMMENT =		weighted finite-state transducers library

DISTNAME =		openfst-1.3.1

SHARED_LIBS +=		fst                       0.0 # 0.0
SHARED_LIBS +=		fstscript                 0.0 # 0.0

CATEGORIES =		math devel textproc

HOMEPAGE =		http://www.openfst.org/twiki/bin/view/FST/WebHome

# Apache 2.0
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c m stdc++

MASTER_SITES =		http://www.openfst.org/twiki/pub/FST/FstDownload/

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

VMEM_WARNING =		Yes

.include <bsd.port.mk>
