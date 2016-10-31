# $OpenBSD: Makefile,v 1.1.1.1 2016/10/31 09:40:05 jasper Exp $

COMMENT =	perl-compatible regular expression library, version 2

DISTNAME =	pcre2-10.22

SHARED_LIBS +=  pcre2-16                  0.0 # 3.0
SHARED_LIBS +=  pcre2-32                  0.0 # 3.0
SHARED_LIBS +=  pcre2-8                   0.0 # 3.0
SHARED_LIBS +=  pcre2-posix               0.0 # 0.1

CATEGORIES =	devel

MASTER_SITES =	http://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/

HOMEPAGE =	http://www.pcre.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bz2 c curses pthread readline z

LIB_DEPENDS =		archivers/bzip2

USE_WXNEEDED =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-pcre2-16 \
			--enable-pcre2-32 \
			--enable-jit \
			--enable-newline-is-any \
			--enable-pcre2grep-libz \
			--enable-pcre2grep-libbz2 \
			--enable-pcre2test-libreadline
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
