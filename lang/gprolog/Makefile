# $OpenBSD: Makefile,v 1.18 2017/07/26 21:28:51 espie Exp $

ONLY_FOR_ARCHS=		amd64 i386

COMMENT=		Prolog compiler

DISTNAME=		gprolog-1.4.4
CATEGORIES=		lang
REVISION =		0

HOMEPAGE=		http://www.gprolog.org/

MAINTAINER=		Nuno Morgadinho <nuno.morgadinho@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gprolog/}

COMPILER =		gcc-only
COMPILER_LANGS =	c
AUTOCONF_VERSION=	2.68
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
