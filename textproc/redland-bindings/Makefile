COMMENT-main=		Redland librdf Perl Bindings
COMMENT-python=		Redland librdf Python Bindings
COMMENT-ruby=		Redland librdf Ruby Bindings
CATEGORIES=		textproc

V=			1.0.17.1
DISTNAME=		redland-bindings-$V
PKGNAME-main=		p5-librdf-$V
PKGNAME-python=		py3-librdf-$V
PKGNAME-ruby=		ruby${MODRUBY_BINREV}-librdf-$V
REVISION=		6
REVISION-python=	7

HOMEPAGE=		https://librdf.org/bindings/

MASTER_SITES=		https://download.librdf.org/source/

# LGPL 2.1, or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB += rdf
WANTLIB-main = ${WANTLIB} c perl # uses perl ABI

# -main is the Perl binding
MULTI_PACKAGES=		-main -python -ruby

LIB_DEPENDS=		textproc/redland
BUILD_DEPENDS=		devel/swig

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	--with-perl
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include

MODULES+=		lang/python
CONFIGURE_ARGS+=	--with-python
MODPY_RUNDEP=		No
CONFIGURE_ENV+=		PYTHON=${MODPY_BIN}
LIB_DEPENDS-python=	${LIB_DEPENDS}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
WANTLIB-python=		${WANTLIB} raptor2 rasqal

MODULES+=		lang/ruby
CONFIGURE_ARGS+=	--with-ruby \
			--with-ruby-linking=so
MODRUBY_RUNDEP=		No
CONFIGURE_ENV+=		RUBY=${RUBY} CFLAGS="${CFLAGS} -fdeclspec"
LIB_DEPENDS-ruby=	${LIB_DEPENDS} ${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
WANTLIB-ruby=		${WANTLIB} ${MODRUBY_WANTLIB}

PORTHOME=${WRKDIR}

post-extract:
	rm ${WRKSRC}/perl/CORE_wrap.c

.include <bsd.port.mk>
