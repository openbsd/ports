# $OpenBSD: Makefile,v 1.1.1.1 2015/05/09 21:04:58 juanfra Exp $

SHARED_ONLY =	Yes

COMMENT =	interpreter of the R7RS Scheme programming language

DISTNAME =	chibi-scheme-0.7.2

SHARED_LIBS =	chibi-scheme 0.0 # 0.7.2

CATEGORIES =	lang

HOMEPAGE =	http://synthcode.com/wiki/chibi-scheme

MAINTAINER =	Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# New BSD License
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c m

MASTER_SITES =	http://abrek.synthcode.com/ \
		http://download.tuxfamily.org/jod/lang/chibi-scheme/ \
		ftp://download.tuxfamily.org/jod/lang/chibi-scheme/

EXTRACT_SUFX =	.tgz

MAKE_ENV =	CC=${CC} \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		LIBchibi-scheme_VERSION=${LIBchibi-scheme_VERSION}
FAKE_FLAGS =	PREFIX=${LOCALBASE} \
		DESTDIR=${WRKINST} \
		MANDIR=${LOCALBASE}/man/man1

USE_GMAKE =	Yes

.include <bsd.port.mk>
