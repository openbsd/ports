# $OpenBSD: Makefile,v 1.2 2002/07/20 17:45:57 fgsch Exp $

COMMENT=	"tool to mirror contents of HTTP and FTP servers"

DISTNAME=	pavuk-0.9pl28
CATEGORIES=	net
NEED_VERSION=	1.531
EXTRACT_SUFX=	.tgz

MASTER_SITES=	http://www.pavuk.org/sw/ \
		http://www.idata.sk/~ondrej/sw/ \
		http://www.doc.cs.univ-paris8.fr/mirrors/pavuk/sw/

HOMEPAGE=	http://www.pavuk.org/

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-debug --disable-tree --disable-nls \
		 --disable-gnome --with-regex=posix

.if !${FLAVOR:L:Mno_x11}
LIB_DEPENDS+=	gtk.1.2::x11/gtk+
.else
CONFIGURE_ARGS+= --disable-gtk
.endif

DOCS=		COPYING FAQ README jsbind.txt wget-pavuk.HOWTO
SAMPLES=	pavukrc.sample

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pavuk ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/man/pavuk.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pavuk
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pavuk
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pavuk
	cd ${WRKSRC} && ${INSTALL_DATA} ${SAMPLES} \
	  ${PREFIX}/share/examples/pavuk

.include <bsd.port.mk>
