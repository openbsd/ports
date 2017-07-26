# $OpenBSD: Makefile,v 1.29 2017/07/26 22:45:31 sthen Exp $

COMMENT=	create a document with syntax highlighting

DISTNAME=	source-highlight-3.1.8
SHARED_LIBS +=	source-highlight     1.1      # 4.1
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	https://www.gnu.org/software/src-highlite/

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c m ${COMPILER_LIBCXX} boost_regex-mt pthread

MASTER_SITES=	${MASTER_SITE_GNU:=src-highlite/}

LIB_DEPENDS=	devel/boost
BUILD_DEPENDS=	devel/help2man \
		textproc/texi2html

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	bash_completiondir=${PREFIX}/share/examples/source-highlight/bash_completion.d

TEST_TARGET=	check

.include <bsd.port.mk>
