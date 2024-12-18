COMMENT =	perl-compatible regular expression library, version 2

DISTNAME =	pcre2-10.44

SHARED_LIBS +=  pcre2-16                  0.6 # 13.0
SHARED_LIBS +=  pcre2-32                  0.6 # 13.0
SHARED_LIBS +=  pcre2-8                   0.7 # 13.0
SHARED_LIBS +=  pcre2-posix               1.0 # 3.5

CATEGORIES =	devel

SITES =		https://github.com/PCRE2Project/pcre2/releases/download/${DISTNAME}/

HOMEPAGE =	https://pcre2project.github.io/pcre2/
MAINTAINER =	Nam Nguyen <namn@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += bz2 c curses readline z

LIB_DEPENDS =		archivers/bzip2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-pcre2-16 \
			--enable-pcre2-32 \
			--enable-pcre2grep-libz \
			--enable-pcre2grep-libbz2 \
			--enable-pcre2test-libreadline
# explicitly disable JIT that would require WXNEEDED
CONFIGURE_ARGS +=	--disable-jit
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -r ${PREFIX}/share/doc/pcre2/{pcre2*.txt,html}

.include <bsd.port.mk>
