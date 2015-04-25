# $OpenBSD: Makefile,v 1.24 2015/04/25 22:16:26 rpe Exp $

COMMENT=	create a document with syntax highlighting

DISTNAME=	source-highlight-3.1.8
SHARED_LIBS +=	source-highlight     1.1      # 4.1
CATEGORIES=	textproc

HOMEPAGE=	https://www.gnu.org/software/src-highlite/

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c m stdc++ boost_regex-mt pthread

MASTER_SITES=	${MASTER_SITE_GNU:=src-highlite/}

LIB_DEPENDS=	devel/boost
BUILD_DEPENDS=	devel/help2man \
		textproc/texi2html
TEST_DEPENDS=	textproc/gsed

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	bash_completiondir=${PREFIX}/share/examples/source-highlight/bash_completion.d

TEST_TARGET=	check

pre-configure:
	perl -pi -e 's,sed -i,gsed -i,' ${WRKSRC}/tests/Makefile.in

.include <bsd.port.mk>
