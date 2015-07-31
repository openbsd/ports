# $OpenBSD: Makefile,v 1.4 2015/07/31 14:37:34 naddy Exp $

# The next version will work on other architectures again
ONLY_FOR_ARCHS =	amd64 i386

SHARED_ONLY =	Yes

COMMENT =	interpreter of the R7RS Scheme programming language

DISTNAME =	chibi-scheme-0.7.3

SHARED_LIBS =	chibi-scheme 1.0 # 0.7.3

CATEGORIES =	lang

HOMEPAGE =	http://synthcode.com/wiki/chibi-scheme

MAINTAINER =	Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# New BSD License
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c m

MASTER_SITES =	http://synthcode.com/scheme/chibi/ \
		http://download.tuxfamily.org/jod/lang/chibi-scheme/ \
		ftp://download.tuxfamily.org/jod/lang/chibi-scheme/

EXTRACT_SUFX =	.tgz

# -DSEXP_USE_ALIGNED_BYTECODE=1 is experimental and broken on OpenBSD
# Back to defaults while upstream fixes the bugs.
MAKE_ENV +=	CC=${CC} \
		LDFLAGS="-L${WRKSRC} -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${WRKSRC}/include -I${LOCALBASE}/include -DSEXP_USE_ALIGNED_BYTECODE=0" \
		SOVERSION="${LIBchibi-scheme_VERSION}"
# "gmake install" works fine but shows the error: "gmake: write error: stdout"
# -s is the simplest workaround for this bug
FAKE_FLAGS +=	PREFIX="${LOCALBASE}" \
		DESTDIR="${WRKINST}" \
		MANDIR="${LOCALBASE}/man/man1" \
		-s

USE_GMAKE =	Yes

.include <bsd.port.mk>
