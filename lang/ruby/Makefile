# $OpenBSD: Makefile,v 1.30 2005/02/24 13:20:41 alek Exp $

COMMENT=		"object oriented script language with threads"

SHARED_ONLY=		Yes
VERSION=		1.8.1
DISTNAME=		ruby-${VERSION}
CATEGORIES=		lang

HOMEPAGE=		http://www.ruby-lang.org/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ssl termcap m ncurses crypto c util z readline

MASTER_SITES=	ftp://www.ruby-lang.org/pub/ruby/1.8/ \
                ftp://mirror.nucba.ac.jp/pub/ruby/1.8/ \
                ftp://ftp.kr.freebsd.org/pub/ruby/1.8/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

FLAVORS=	tk
FLAVOR?=

.if ${FLAVOR:L} == "tk"
LIB_DEPENDS=	tcl84.::lang/tcl/8.4 \
		tk84.::x11/tk/8.4

CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.4 \
			--with-tk-include=${PREFIX}/include/tk8.4 \
			--with-X11-dir=${X11BASE} 
.else
CONFIGURE_ARGS+=	--without-x11
.endif
CONFIGURE_ARGS+=	--with-dbm-type=bogus

REGRESS_TARGET=	test

REV=1.8
SUB=${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS=SUB REV

.include <bsd.port.mk>
