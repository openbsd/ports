# $OpenBSD: Makefile,v 1.72 2019/07/12 20:45:15 sthen Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-8.41
REVISION=	2

SHARED_LIBS +=  pcre                 3.0      # 0.1
SHARED_LIBS +=  pcre16               0.0      # 0.0
SHARED_LIBS +=  pcreposix            1.5      # 0.0
SHARED_LIBS +=  pcrecpp              3.3      # 0.0

CATEGORIES=	devel
DPB_PROPERTIES=	parallel

MASTER_SITES=	https://ftp.pcre.org/pub/pcre/ \
		ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m readline ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-pcre8 \
			--enable-pcre16 \
			--enable-utf \
			--enable-unicode-properties \
			--enable-pcretest-libreadline

.include <bsd.port.mk>
