# $OpenBSD: Makefile,v 1.1.1.1 2004/09/26 14:48:29 espie Exp $

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

# --prefix overwrited by --with-install-dir
#CONFIGURE_ARGS+= --with-install-dir=${WRKINST}${LOCALBASE} --without-links-dir --disable-ebp --disable-fast-call --disable-piped-consult --disable-gui-console --disable-sockets --disable-fd-solver --with-examples-dir=${WRKINST}${LOCALBASE}/share/examples/gprolog --with-html-dir=${WRKINST}${LOCALBASE}/share/doc/gprolog/html --with-doc-dir=${WRKINST}${LOCALBASE}/share/doc/gprolog

CONFIGURE_ARGS+= --with-install-dir='$${DESTDIR}${PREFIX}' \
	--without-links-dir \
	--disable-ebp \
	--disable-fast-call \
	--disable-piped-consult \
	--disable-gui-console \
	--disable-sockets \
	--disable-fd-solver \
	--with-examples-dir='$${DESTDIR}${PREFIX}/share/examples/gprolog' \
	--with-html-dir='$${DESTDIR}${PREFIX}/share/doc/gprolog/html' \
	--with-doc-dir='$${DESTDIR}${PREFIX}/share/doc/gprolog'

WRKDIST=		${WRKDIR}/${DISTNAME}/src

INSTALL_TARGET=        install-strip


.include <bsd.port.mk>
