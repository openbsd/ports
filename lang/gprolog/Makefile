# $OpenBSD: Makefile,v 1.9 2009/12/27 19:30:21 jasper Exp $

ONLY_FOR_ARCHS=		i386 amd64

COMMENT=		Prolog compiler

DISTNAME=		gprolog-1.3.1
CATEGORIES=		lang

HOMEPAGE=		http://www.gprolog.org/

MAINTAINER=		Nuno Morgadinho <nuno.morgadinho@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gprolog/}

AUTOCONF_VERSION=	2.61
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

MODULES+=       gcc4
MODGCC4_ARCHES= *
MODGCC4_LANGS=  c

WRKDIST=		${WRKDIR}/${DISTNAME}/src

REGRESS_DEPENDS=	::textproc/gdiff

post-install:
	for i in gplc hexgplc gprolog pl2wam wam2ma ma2asm fd2c; do \
		ln -sf ${TRUEPREFIX}/libdata/gprolog/bin/$$i ${PREFIX}/bin/$$i; \
	done

.include <bsd.port.mk>
