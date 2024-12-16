COMMENT-main=		Redland librdf Perl Bindings
COMMENT-ruby=		Redland librdf Ruby Bindings
CATEGORIES=		textproc

V=			1.0.17.1
DISTNAME=		redland-bindings-$V
PKGNAME-main=		p5-librdf-$V
PKGNAME-ruby=		ruby${MODRUBY_BINREV}-librdf-$V
REVISION=		7
REVISION-ruby=		8

HOMEPAGE=		https://librdf.org/bindings/

SITES=			https://download.librdf.org/source/

# LGPL 2.1, or Apache 2
PERMIT_PACKAGE=	Yes

WANTLIB += rdf
WANTLIB-main = ${WANTLIB} c perl # uses perl ABI

# -main is the Perl binding
MULTI_PACKAGES=		-main -ruby

LIB_DEPENDS=		textproc/redland
BUILD_DEPENDS=		devel/swig

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS+=	--with-perl \
			--without-python
CONFIGURE_ENV+=		CPPFLAGS=-I${LOCALBASE}/include

MODULES+=		lang/ruby
CONFIGURE_ARGS+=	--with-ruby \
			--with-ruby-linking=so
MODRUBY_RUNDEP=		No
CONFIGURE_ENV+=		RUBY=${RUBY}
LIB_DEPENDS-ruby=	${LIB_DEPENDS} ${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS-ruby=	${MODRUBY_RUN_DEPENDS}
WANTLIB-ruby=		${WANTLIB} ${MODRUBY_WANTLIB}

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
# needed for ruby 3 on llvm
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -fdeclspec"
.endif

PORTHOME=${WRKDIR}

post-extract:
	rm ${WRKSRC}/perl/CORE_wrap.c

.include <bsd.port.mk>
