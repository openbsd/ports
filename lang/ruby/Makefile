# $OpenBSD: Makefile,v 1.23 2002/09/20 14:58:38 couderc Exp $

COMMENT=	"object oriented script language with threads"
VERSION=	1.6.7
DISTNAME=	ruby-${VERSION}
CATEGORIES=	lang

MASTER_SITES=	ftp://www.ruby-lang.org/pub/ruby/ \
		ftp://mirror.nucba.ac.jp/pub/ruby/ \
		ftp://ftp.kr.freebsd.org/pub/ruby/

MASTER_SITES0=	${MASTER_SITES:C,$,doc/,}

BINARCH=	${DISTNAME}.tar.gz
MANARCH=	ruby-man-1.4.6.tar.gz
DISTFILES=	${BINARCH} ${MANARCH}:0
EXTRACT_ONLY=	${BINARCH}

HOMEPAGE=	http://www.ruby-lang.org/
MAINTAINER=	Damien Couderc <couderc@openbsd.org>

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	tk
FLAVOR?=

CONFIGURE_STYLE=	autoconf
SEPARATE_BUILD=		concurrent

# XXX workaround gcc bugs on sparc64 (for sha1.o)
.if ${MACHINE_ARCH:Msparc64}
CFLAGS+=	-O0
.endif

CONFIGURE_ENV=	YACC=yacc
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.if ${FLAVOR:L} == "tk"
LIB_DEPENDS=	tcl83.::lang/tcl/8.3 \
		tk83.::x11/tk/8.3

CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.3 \
			--with-tk-include=${PREFIX}/include/tk8.3 \
			--with-X11-dir=${X11BASE} 
.else
CONFIGURE_ARGS+=	--without-x11
.endif


# Force rebuild of parse.c with yacc
post-extract: 
	cd ${WRKSRC} && rm parse.c

# buglet fix: lex.c should be in object dir
post-configure:
	cp ${WRKSRC}/lex.c ${WRKBUILD}/lex.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby
	cd ${PREFIX}/share/doc && \
	tar -s/ruby-man-1.4/ruby/ -zxf ${FULLDISTDIR}/${MANARCH}
	@strip ${PREFIX}/bin/ruby

REV=1.6
SUB=${MACHINE_ARCH}-openbsd${OSREV}
SUBST_VARS=SUB REV

.include <bsd.port.mk>
