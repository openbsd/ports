# $OpenBSD: Makefile,v 1.42 2006/10/02 07:48:08 bernd Exp $

COMMENT=		"object oriented script language with threads"
COMMENT-iconv=		"libiconv interface for ruby"
COMMENT-gdbm=		"gdbm interface for ruby"
COMMENT-tk=		"tk interface for ruby"

SHARED_ONLY=		Yes
VERSION=		1.8.5
DISTNAME=		ruby-${VERSION}
SHARED_LIBS=		ruby 1.85
PKGNAME-iconv=		ruby-iconv-${VERSION}
PKGNAME-gdbm=		ruby-gdbm-${VERSION}
PKGNAME-tk=		ruby-tk-${VERSION}

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

PSEUDO_FLAVORS= 	no_x11
FLAVOR?=

MULTI_PACKAGES=		-iconv -gdbm
SUBPACKAGE?=

MODULES=		converters/libiconv
LIB_DEPENDS+=		gdbm.>=3::databases/gdbm

.if !${FLAVOR:L:Mno_x11}
MULTI_PACKAGES+=	-tk
LIB_DEPENDS+=		tk84:tk-8.4.*:x11/tk/8.4 
.endif 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-ipv6 \
			--with-dbm-type=bogus \
			--with-opt-dir="${LOCALBASE}"
CONFIGURE_ENV+=		PREFIX="${PREFIX}" \
			LIBruby_VERSION=${LIBruby_VERSION}

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.4 \
			--with-tk-include=${PREFIX}/include/tk8.4 \
			--with-X11-dir=${X11BASE} 
.endif

INSTALL_TARGET=		install install-doc

WANTLIB= 		ssl termcap ncurses c crypto m util z readline
.if defined(PACKAGING)
.  if empty(SUBPACKAGE)
MODULES=	
LIB_DEPENDS=
.  elif ${SUBPACKAGE} == "-iconv"
MODULES=		converters/libiconv
LIB_DEPENDS=		ruby.>=1.84::lang/ruby
WANTLIB=		c m
.  elif ${SUBPACKAGE} == "-gdbm"
MODULES=
LIB_DEPENDS=		ruby.>=1.84::lang/ruby \
			gdbm.>=3::databases/gdbm
WANTLIB=		c m
.  elif ${SUBPACKAGE} == "-tk"
MODULES=		
LIB_DEPENDS=		ruby.>=1.84::lang/ruby \
			tk84:tk-8.4.*:x11/tk/8.4
WANTLIB=		X11 tcl84.>=1 c m
.  endif
.endif 

REGRESS_DEPENDS=	::lang/ruby

REV=1.8
SUB=${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS=SUB REV

.include <bsd.port.mk>
