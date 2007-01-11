# $OpenBSD: Makefile,v 1.53 2007/01/11 09:34:40 bernd Exp $

SHARED_ONLY=		Yes

COMMENT-main=		"object oriented script language with threads"
COMMENT-iconv=		"libiconv interface for ruby"
COMMENT-gdbm=		"gdbm interface for ruby"
COMMENT-tk=		"tk interface for ruby"

VERSION=		1.8.5
DISTNAME=		ruby-${VERSION}
SHARED_LIBS=		ruby 1.85
PKGNAME-main=		${DISTNAME}p5
PKGNAME-iconv=		ruby-iconv-${VERSION}p2
PKGNAME-gdbm=		ruby-gdbm-${VERSION}p2
PKGNAME-tk=		ruby-tk-${VERSION}p2

CATEGORIES=		lang

HOMEPAGE=		http://www.ruby-lang.org/

MAINTAINER=		Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL/Artistic/BSD/Public Domain/Beer-Ware
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://www.ruby-lang.org/pub/ruby/1.8/ \
                	ftp://mirror.nucba.ac.jp/pub/ruby/1.8/ \
                	ftp://ftp.kr.freebsd.org/pub/ruby/1.8/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-ipv6 \
			--with-dbm-type=bogus \
			--with-opt-dir="${LOCALBASE}"
CONFIGURE_ENV=		PREFIX="${PREFIX}" \
			LIBruby_VERSION=${LIBruby_VERSION} \
			CPPFLAGS="-DOPENSSL_NO_STATIC_ENGINE"

MODULES=		converters/libiconv

WANTLIB-main= 		c m readline termcap util crypto ncurses ssl z
LIB_DEPENDS-main=
RUN_DEPENDS-main=

PSEUDO_FLAVORS= 	no_x11
FLAVOR?=

MULTI_PACKAGES=		-main -iconv -gdbm

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.4 \
			--with-tk-include=${PREFIX}/include/tk8.4 \
			--with-X11-dir=${X11BASE}
.endif

WANTLIB-iconv=		c m
LIB_DEPENDS-iconv=	ruby.>=1::lang/ruby \
			${MODLIBICONV_LIB_DEPENDS}
RUN_DEPENDS-iconv=	${MODLIBICONV_RUN_DEPENDS}

WANTLIB-gdbm=		c m
LIB_DEPENDS-gdbm=	gdbm.>=3::databases/gdbm \
			ruby.>=1::lang/ruby
RUN_DEPENDS-gdbm=

.if !${FLAVOR:L:Mno_x11}
WANTLIB-tk=		X11 c m tcl84
LIB_DEPENDS-tk=		tk84:tk-8.4.*:x11/tk/8.4 \
			ruby.>=1::lang/ruby
RUN_DEPENDS-tk=
.endif

REGRESS_DEPENDS=	::lang/ruby
INSTALL_TARGET=		install install-doc
REV=			1.8
SUB=			${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS=		SUB REV

# Building the ruby documentation consumes lots of memory.
VMEM_WARNING=		Yes

.include <bsd.port.mk>
