# $OpenBSD: Makefile.inc,v 1.24 2020/03/20 16:44:24 naddy Exp $

COMMENT-main ?=		object oriented script language with threads
COMMENT-gdbm ?=		gdbm interface for ruby
COMMENT-ri_docs ?=	ri documentation files for ruby

DISTNAME ?=	ruby-${VERSION}

PKGNAME-main ?=		ruby-${VERSION}
PKGNAME-gdbm ?=		ruby${BINREV}-gdbm-${VERSION}
PKGNAME-ri_docs ?=	ruby${BINREV}-ri_docs-${VERSION}

PKG_ARCH-ri_docs ?=	*
WANTLIB-ri_docs ?=	# empty

PKGSPEC-main ?=		ruby->=${REV},<${NEXTVER}

CATEGORIES ?=	lang

HOMEPAGE ?=	https://www.ruby-lang.org/

MAINTAINER ?=	Jeremy Evans <jeremy@openbsd.org>

# GPL/Artistic/BSD/Public Domain/Beer-Ware
PERMIT_PACKAGE?= Yes

MASTER_SITES ?=		https://cache.ruby-lang.org/pub/ruby/${VERSION:R}/
MASTER_SITES0 ?=	https://bugs.ruby-lang.org/attachments/download/

CONFIGURE_STYLE ?=	gnu
CONFIGURE_ARGS +=	--enable-shared \
			--program-suffix=${BINREV} \
			--with-soname=ruby${BINREV} \
			--with-ruby-version=minor \
			--with-mantype=doc \
			--enable-pthread \
			--enable-ipv6 \
			--without-bundled-libffi \
			--disable-option-checking

CONFIGURE_ENV +=	LIBruby${BINREV}_VERSION=${LIBruby${BINREV}_VERSION} \
			PREFIX="${PREFIX}" \
			CPPFLAGS="-DOPENSSL_NO_STATIC_ENGINE -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			DLDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_prog_DOXYGEN="" \
			ac_cv_prog_DOT="" \

MAKE_ENV +=		DLDFLAGS="-I${LOCALBASE}/lib"

WANTLIB-main +=		c crypto ffi gmp m ncurses pthread readline ssl \
			util yaml z
LIB_DEPENDS-main +=	devel/gmp \
			devel/libyaml \
			devel/libffi

WANTLIB-gdbm +=		c m gdbm gmp pthread ruby${BINREV}
LIB_DEPENDS-gdbm +=	databases/gdbm \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
RUN_DEPENDS-gdbm ?=

DEBUG_PACKAGES ?=	-main

ALL_TARGET =		V=1 main
INSTALL_TARGET =	V=1 install-nodoc

TEST_DEPENDS ?=		${FULLPKGNAME-main}:${BUILD_PKGPATH}

POST_EXTRACT ?=		rm -rf ${WRKSRC}/ext/fiddle/libffi-* \
				${WRKSRC}/tool/downloader.rb;

# cc(1) uses too much ram to build ext/ripper/ripper.c
# XXX remove arch if vmparam.h + login.conf give more than 1024M to pbuild
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
CFLAGS_OVERRIDE =	-O1
.endif

FIX_RIPPER ?=	sed -i 's/%%CFLAGS_OVERRIDE%%/${CFLAGS_OVERRIDE}/g' \
			${WRKSRC}/ext/ripper/depend;

PRE_INSTALL ?=	find ${WRKSRC} -name '*.orig' -delete; \
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby \
		${PREFIX}/lib/ruby/gems/${REV}/extensions/${SUB} \
		${PREFIX}/lib/ruby/gems/${REV}/extensions/${SUB}/${REV};

# Ruby itself is clean, but some extensions (e.g. devel/ruby-therubyracer)
# need W|X mappings.
USE_WXNEEDED ?=		Yes

REV ?=			${VERSION:R}
BINREV ?=		${REV:S/.//}
SUB ?=			${MACHINE_ARCH:S/amd64/x86_64/}-openbsd
SUBST_VARS +=		SUB REV
FILESDIR ?=		${.CURDIR}/../files

FIX_RBCONFIG ?=		sed 's/INSTALL_ARGS/-c -o ${BINOWN} -g ${BINGRP}/' < \
				${FILESDIR}/rbconfig_fix.rb >> \
				${PREFIX}/lib/ruby/${REV}/${SUB}/rbconfig.rb
