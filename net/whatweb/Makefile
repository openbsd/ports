# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:52 sthen Exp $

COMMENT=		web scanner

GH_TAGNAME =		v0.4.9
GH_PROJECT=		WhatWeb
GH_ACCOUNT=		urbanadventurer

REVISION =		1

CATEGORIES=		net www

HOMEPAGE=		http://www.morningstarsecurity.com/research/whatweb

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

MODRUBY_ADJ_FILES=	whatweb

PKG_ARCH=		*
NO_TEST=		Yes
NO_BUILD=		Yes

do-install:
	sed -i 's,/usr/share,${TRUEPREFIX}/share,g' ${WRKSRC}/whatweb
	${INSTALL_SCRIPT} ${WRKSRC}/whatweb ${PREFIX}/bin/whatweb
	${INSTALL_MAN} ${WRKSRC}/whatweb.1 ${PREFIX}/man/man1/whatweb.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc}/whatweb
	${INSTALL_DATA} ${WRKSRC}/{README,whatweb.xsl} ${PREFIX}/share/doc/whatweb/
	cp -Rp ${WRKSRC}/{my-plugins,plugins-disabled,plugins,lib,plugin-development} \
		${PREFIX}/share/whatweb/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/whatweb

.include <bsd.port.mk>
