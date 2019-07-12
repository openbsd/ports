# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:22 sthen Exp $

ONLY_FOR_ARCHS = amd64 i386

COMMENT =	interpreter of the R7RS Scheme programming language

DISTNAME =	chibi-scheme-0.8.0
REVISION =	0

SHARED_LIBS =	chibi-scheme 2.0 # 1.0

CATEGORIES =	lang

HOMEPAGE =	http://synthcode.com/wiki/chibi-scheme

MAINTAINER =	Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# New BSD License
PERMIT_PACKAGE = Yes

WANTLIB =	c m

MASTER_SITES =	http://synthcode.com/scheme/chibi/ \
		https://download.tuxfamily.org/jod/lang/chibi-scheme/ \
		ftp://download.tuxfamily.org/jod/lang/chibi-scheme/

EXTRACT_SUFX =	.tgz

MAKE_ENV +=	CC=${CC} \
		LDFLAGS="-L${WRKSRC} -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${WRKSRC}/include -I${LOCALBASE}/include" \
		SOVERSION="${LIBchibi-scheme_VERSION}"
# "gmake install" works fine but shows the error: "gmake: write error: stdout"
# -s is the simplest workaround for this bug
FAKE_FLAGS +=	PREFIX="${LOCALBASE}" \
		DESTDIR="${WRKINST}" \
		MANDIR="${LOCALBASE}/man/man1" \
		-s

USE_GMAKE =	Yes

.include <bsd.port.mk>
