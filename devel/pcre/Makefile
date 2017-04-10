# $OpenBSD: Makefile,v 1.63 2017/04/10 11:45:26 sthen Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-8.38
REVISION=	0

SHARED_LIBS +=  pcre                 3.0      # 0.1
SHARED_LIBS +=  pcre16               0.0      # 0.0
SHARED_LIBS +=  pcreposix            1.5      # 0.0
SHARED_LIBS +=  pcrecpp              3.3      # 0.0

CATEGORIES=	devel
DPB_PROPERTIES=	parallel

MASTER_SITES=	http://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m readline ${LIBCXX}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-pcre8 \
			--enable-pcre16 \
			--enable-utf \
			--enable-unicode-properties \
			--enable-pcretest-libreadline

.include <bsd.port.mk>
