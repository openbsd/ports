# $OpenBSD: Makefile,v 1.13 2020/06/20 06:55:46 kn Exp $

COMMENT =	perl-compatible regular expression library, version 2

DISTNAME =	pcre2-10.35

SHARED_LIBS +=  pcre2-16                  0.5 # 10.35
SHARED_LIBS +=  pcre2-32                  0.5 # 10.35
SHARED_LIBS +=  pcre2-8                   0.6 # 10.35
SHARED_LIBS +=  pcre2-posix               0.3 # 2.3

CATEGORIES =	devel

MASTER_SITES =	https://ftp.pcre.org/pub/pcre/ \
		${MASTER_SITE_SOURCEFORGE:=pcre/} \
		http://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/

HOMEPAGE =	https://www.pcre.org/
MAINTAINER =	Nam Nguyen <namn@berkeley.edu>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += bz2 c curses readline z

LIB_DEPENDS =		archivers/bzip2
TEST_DEPENDS =		textproc/gsed

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-pcre2-16 \
			--enable-pcre2-32 \
			--enable-newline-is-any \
			--enable-pcre2grep-libz \
			--enable-pcre2grep-libbz2 \
			--enable-pcre2test-libreadline
# explicitly disable JIT that would require WXNEEDED
CONFIGURE_ARGS +=	--disable-jit
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
