# When updating, check that x11/gnome/aisleriot MODGNOME_CPPFLAGS references
# the proper guile2 includes directory. Also, 32-bit BE arches bootstraps may
# need to be rebuilt.

COMMENT=		GNU's Ubiquitous Intelligent Language for Extension
# '

VERSION=		2.2.7
DISTNAME=		guile-${VERSION}
PKGNAME=		guile2-${VERSION}
V=			${VERSION:R}
SUBST_VARS=		V

CATEGORIES=		lang

HOMEPAGE=		https://www.gnu.org/software/guile/

SHARED_LIBS +=  guile-2.2            0.2      # 4.1

# GPLv3, LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c curses ffi gc gmp iconv intl ltdl m pthread readline
WANTLIB += unistring

MASTER_SITES=		${MASTER_SITE_GNU:=guile/}
MASTER_SITES0=		https://charlenew.xyz/distfiles/

DISTFILES=		${DISTNAME}${EXTRACT_SUFX}
SUPDISTFILES=		${BOOTSTRAP_32BE}:0

EXTRACT_ONLY=		${DISTNAME}${EXTRACT_SUFX}

# internal compiler error: in unify_nodes, at tree-ssa-structalias.c:1231
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE=		Yes

RUN_DEPENDS=		devel/slib
LIB_DEPENDS=		converters/libunistring \
			devel/boehm-gc \
			devel/gettext,-runtime \
			devel/gmp \
			devel/libffi \
			devel/libtool,-ltdl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-suffix=${V}

# Needed because otherwise regress tests won't build:
# warning: format '%ji' expects type 'intmax_t', but argument 4 has type 'scm_t_intmax'
CONFIGURE_ARGS +=	--disable-error-on-warning

.include <bsd.port.arch.mk>

# The prebuilt bootstrap makes the build segfault on 32-bit BE arches.
# Provide ours instead.
BOOTSTRAP_32BE=		g2strap-2.2.7-32be.tgz
.if !${PROPERTIES:Mlp64} && ${PROPERTIES:Mbe}
BOOTSTRAP_TARGET=	32-bit-big-endian
BOOTSTRAP=		${BOOTSTRAP_32BE}
DISTFILES+=		${SUPDISTFILES}
.endif

post-extract:
.if "${BOOTSTRAP_TARGET}" != ""
	mv ${WRKSRC}/prebuilt/${BOOTSTRAP_TARGET}{,-broken}
	cd ${WRKSRC} && tar xzf ${FULLDISTDIR}/${BOOTSTRAP}
.endif

post-install:
	install -d ${PREFIX}/share/guile/site/${V}/
	# fix conflict with devel/guile
	mv ${PREFIX}/share/aclocal/guile{,${V}}.m4

.include <bsd.port.mk>

# The below bits only matter on 32-bit BE archs for now.

G2PKG=	${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME}.tgz

.PHONY: g2strap

g2strap: ${G2PKG}
.if "${BOOTSTRAP_TARGET}" != ""
	mkdir -p ${WRKBUILD}/g2strap/prebuilt/${BOOTSTRAP_TARGET}
	cp -a ${WRKBUILD}/bootstrap/{Makefile.*,ice-9,language,srfi,system} \
	      ${WRKBUILD}/g2strap/prebuilt/${BOOTSTRAP_TARGET}
	tar -C ${WRKBUILD}/g2strap -czf ${FULLDISTDIR}/${BOOTSTRAP} .
	@echo "The bootstrap can be found at: " ${FULLDISTDIR}/${BOOTSTRAP}
.else
	@echo "You don't need to build a bootstrap on ${MACHINE_ARCH}."
.endif
