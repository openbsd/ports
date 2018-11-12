# $OpenBSD: Makefile,v 1.21 2018/11/12 19:15:40 daniel Exp $

ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		Prolog compiler

DISTNAME=		gprolog-1.4.5
CATEGORIES=		lang

HOMEPAGE=		http://www.gprolog.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MASTER_SITES=		http://www.gprolog.org/ \
			http://www.gprolog.org/old_versions/ \
			${MASTER_SITE_GNU:=gprolog/}

COMPILER =		base-gcc ports-gcc
COMPILER_LANGS =	c
AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf dest no-autoheader


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

TEST_DEPENDS=	textproc/gdiff

post-install:
	for i in gplc hexgplc gprolog pl2wam wam2ma ma2asm fd2c; do \
		ln -sf ${TRUEPREFIX}/libdata/gprolog/bin/$$i ${PREFIX}/bin/$$i; \
	done

.include <bsd.port.mk>
