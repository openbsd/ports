# $OpenBSD: Makefile,v 1.28 2019/07/12 20:47:18 sthen Exp $

BROKEN-i386=		various errors from gplc during build (segv, "fatal error", etc at various different points)

ONLY_FOR_ARCHS=		amd64 i386 powerpc sparc64

COMMENT=		Prolog compiler

DISTNAME=		gprolog-1.4.5
REVISION=		3

CATEGORIES=		lang

HOMEPAGE=		http://www.gprolog.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

MASTER_SITES=		http://www.gprolog.org/ \
			http://www.gprolog.org/old_versions/ \
			${MASTER_SITE_GNU:=gprolog/}

COMPILER =		base-gcc ports-gcc
COMPILER_LANGS =	c
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
CONFIGURE_ENV=		LDFLAGS="${LDFLAGS}"

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH:Mi386}
LDFLAGS+=		-Wl,-znotext
.endif

WRKDIST=		${WRKDIR}/${DISTNAME}/src

post-install:
	for i in gplc hexgplc gprolog pl2wam wam2ma ma2asm fd2c; do \
		ln -sf ${TRUEPREFIX}/libdata/gprolog/bin/$$i ${PREFIX}/bin/$$i; \
	done

.include <bsd.port.mk>
