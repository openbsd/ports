# $OpenBSD: Makefile,v 1.3 2004/09/26 15:32:27 espie Exp $

COMMENT=		Prolog compiler

DISTNAME=		gprolog-1.2.16
CATEGORIES=		lang

HOMEPAGE=		http://gprolog.inria.fr/

MAINTAINER=		Nuno Morgadinho <nmorgadinho@openbsd-pt.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=gprolog/}

#USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.52
CONFIGURE_STYLE=	autoconf dest no-autoheader


CONFIGURE_ARGS+= --with-install-dir='$${DESTDIR}${PREFIX}/libdata/gprolog' \
	--without-links-dir \
	--disable-ebp \
	--disable-piped-consult \
	--disable-gui-console \
	--with-examples-dir='$${DESTDIR}${PREFIX}/share/examples/gprolog' \
	--with-html-dir='$${DESTDIR}${PREFIX}/share/doc/gprolog/html' \
	--with-doc-dir='$${DESTDIR}${PREFIX}/share/doc/gprolog'

WRKDIST=		${WRKDIR}/${DISTNAME}/src

INSTALL_TARGET=        install-strip

post-install:
	for i in gplc hexgplc gprolog pl2wam wam2ma ma2asm fd2c; do \
		ln -sf ${TRUEPREFIX}/libdata/gprolog/bin/$$i ${PREFIX}/bin/$$i; \
	done
	

.include <bsd.port.mk>
