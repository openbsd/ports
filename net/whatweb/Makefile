COMMENT=		web scanner

GH_TAGNAME=		v0.5.5
GH_PROJECT=		WhatWeb
GH_ACCOUNT=		urbanadventurer

REVISION=		1

CATEGORIES=		net www

HOMEPAGE=		http://www.morningstarsecurity.com/research/whatweb

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

MODRUBY_ADJ_FILES=	whatweb

RUN_DEPENDS=		www/ruby-addressable,${MODRUBY_FLAVOR}

PKG_ARCH=		*
NO_TEST=		Yes
NO_BUILD=		Yes

do-install:
	sed -i 's,/usr/share,${TRUEPREFIX}/share,g' ${WRKSRC}/lib/whatweb.rb
	${INSTALL_MAN} ${WRKSRC}/whatweb.1 ${PREFIX}/man/man1/whatweb.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/{,doc}/whatweb
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/whatweb/
	cp -Rp ${WRKSRC}/{addons,lib,my-plugins,plugins-disabled,plugins,plugin-development} \
		${PREFIX}/share/whatweb/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/whatweb
	${INSTALL_SCRIPT} ${WRKSRC}/whatweb ${PREFIX}/share/whatweb/
	ln -sf ${TRUEPREFIX}/share/whatweb/whatweb ${PREFIX}/bin/whatweb

.include <bsd.port.mk>
