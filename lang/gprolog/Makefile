BROKEN-i386=		linking problems
# - with USE_LLD=No or LDFLAGS=--Wl,-z,notext, build fails with
# Fatal Error: if_no_fd.c: FD Solver not linked
#
# - without the above, build fails with
# ld: error: can't create dynamic relocation R_386_32 against local symbol in readonly segment; recompile object files with -fPIC or pass '-Wl,-z,notext' to allow text relocations in the output

ONLY_FOR_ARCHS=		amd64 i386 sparc64

COMMENT=		Prolog compiler

DISTNAME=		gprolog-1.5.0

CATEGORIES=		lang

HOMEPAGE=		http://www.gprolog.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

MASTER_SITES=		http://www.gprolog.org/ \
			http://www.gprolog.org/old_versions/ \
			${MASTER_SITE_GNU:=gprolog/}

CONFIGURE_STYLE=	gnu dest no-autoheader

CONFIGURE_ARGS+= --with-install-dir='${PREFIX}/libdata/gprolog' \
	--without-links-dir \
	--disable-ebp \
	--disable-piped-consult \
	--disable-gui-console \
	--with-examples-dir='${PREFIX}/share/examples/gprolog' \
	--with-html-dir='${PREFIX}/share/doc/gprolog/html' \
	--with-doc-dir='${PREFIX}/share/doc/gprolog' \
	--with-c-flags="${CFLAGS}"

WRKDIST=		${WRKDIR}/${DISTNAME}/src

post-install:
	for i in gplc hexgplc gprolog pl2wam wam2ma ma2asm fd2c; do \
		ln -sf ${TRUEPREFIX}/libdata/gprolog/bin/$$i ${PREFIX}/bin/$$i; \
	done

.include <bsd.port.mk>
