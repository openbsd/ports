# $OpenBSD: Makefile,v 1.1 2021/11/19 10:01:03 sthen Exp $

UNIT_MODNAME=	ruby${MODRUBY_REV}
UNIT_SHORTNAME=	ruby

REVISION=	0

MODULES+=	lang/ruby

# XXX ruby port provide libruby30.so which is picked up in preference to
# the versioned library. Keep the "Extra" WANTLIB.
WANTLIB=	${MODRUBY_WANTLIB}
CONFIGURE_ENV+=	RUBY=${RUBY}
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}
RUN_DEPENDS=	${MODRUBY_RUN_DEPENDS}
SUBST_VARS=	MODRUBY_REV

post-configure:
	cd ${WRKSRC} && ./configure ruby --ruby=${MODRUBY_FLAVOR} \
	    --module=ruby${MODRUBY_REV}

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mclang}
# needed for ruby 3 on llvm
CFLAGS+=	-fdeclspec
.endif

.include <bsd.port.mk>
