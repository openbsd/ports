# $OpenBSD: Makefile,v 1.5 2015/07/19 21:15:36 ajacoutot Exp $

COMMENT=		web scanner

DISTNAME=		whatweb-0.4.8

GH_PROJECT=		WhatWeb
GH_ACCOUNT=		urbanadventurer
GH_COMMIT=		48b9682a0fbf1607f1d3565f9aab3442aee14d12

CATEGORIES=		net www

HOMEPAGE=		http://www.morningstarsecurity.com/research/whatweb

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

MODRUBY_ADJ_FILES=	whatweb

PKG_ARCH=		*
NO_TEST=		Yes
NO_BUILD=		Yes

do-install:
	perl -pi -e 's,/usr/share,${TRUEPREFIX}/share,g' ${WRKSRC}/whatweb
	${INSTALL_SCRIPT} ${WRKSRC}/whatweb ${PREFIX}/bin/whatweb
	${INSTALL_MAN} ${WRKSRC}/whatweb.1 ${PREFIX}/man/man1/whatweb.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc}/whatweb
	${INSTALL_DATA} ${WRKSRC}/{README,whatweb.xsl} ${PREFIX}/share/doc/whatweb/
	cp -Rp ${WRKSRC}/{my-plugins,plugins-disabled,plugins,lib,plugin-development} \
		${PREFIX}/share/whatweb/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/whatweb

.include <bsd.port.mk>
