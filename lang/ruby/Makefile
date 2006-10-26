# $OpenBSD: Makefile,v 1.45 2006/10/26 17:57:16 bernd Exp $

SHARED_ONLY=		Yes

COMMENT=		"object oriented script language with threads"
COMMENT-iconv=		"libiconv interface for ruby"
COMMENT-gdbm=		"gdbm interface for ruby"
COMMENT-tk=		"tk interface for ruby"

VERSION=		1.8.5
DISTNAME=		ruby-${VERSION}
SHARED_LIBS=		ruby 1.85
PKGNAME=		${DISTNAME}p0
PKGNAME-iconv=		ruby-iconv-${VERSION}p1
PKGNAME-gdbm=		ruby-gdbm-${VERSION}p1
PKGNAME-tk=		ruby-tk-${VERSION}p1

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
			LIBruby_VERSION=${LIBruby_VERSION}

WANTLIB= 		c m

PSEUDO_FLAVORS= 	no_x11
FLAVOR?=

MULTI_PACKAGES=		-iconv -gdbm
SUBPACKAGE?=

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.4 \
			--with-tk-include=${PREFIX}/include/tk8.4 \
			--with-X11-dir=${X11BASE}
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} == ""
WANTLIB+=		readline termcap util crypto ncurses ssl z
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} == "-iconv"
MODULES+=		converters/libiconv
.  if defined(PACKAGING)
LIB_DEPENDS+=		ruby.>=1:ruby-${VERSION}*:lang/ruby
.  endif
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} == "-gdbm"
LIB_DEPENDS+=		gdbm.>=3::databases/gdbm
.  if defined(PACKAGING)
LIB_DEPENDS+=		ruby.>=1:ruby-${VERSION}*:lang/ruby
.  endif
.endif

.if !defined(PACKAGING) || ${SUBPACKAGE} == "-tk"
WANTLIB+=		X11 tcl84
LIB_DEPENDS+=		tk84:tk-8.4.*:x11/tk/8.4
.  if defined(PACKAGING)
LIB_DEPENDS+=		ruby.>=1:ruby-${VERSION}*:lang/ruby
.  endif
.endif

REGRESS_DEPENDS=	:ruby-${VERSION}*:lang/ruby
INSTALL_TARGET=		install install-doc
REV=			1.8
SUB=			${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS=		SUB REV

.include <bsd.port.mk>
