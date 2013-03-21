# $OpenBSD: Makefile,v 1.20 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT=	create a document with syntax highlighting

DISTNAME=	source-highlight-3.1.2
REVISION=	0
SHARED_LIBS +=  source-highlight     0.0         # .3.1
CATEGORIES=	textproc

HOMEPAGE=	http://www.gnu.org/software/src-highlite/source-highlight.html

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		c m stdc++ boost_regex

MASTER_SITES=	${MASTER_SITE_GNU:=src-highlite/}

LIB_DEPENDS=	devel/boost
BUILD_DEPENDS=	textproc/texi2html

USE_GROFF =	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--with-bash-completion="${PREFIX}/share/source-highlight/bash_completion.d/"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		YACC="yacc"

TEST_TARGET=	check

post-extract:
	chmod +x ${WRKSRC}/build-aux/install-sh

.include <bsd.port.mk>
