# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:58 espie Exp $

COMMENT=	web scanner

DISTNAME=	whatweb-0.4.7

CATEGORIES=	net www

HOMEPAGE=	http://www.morningstarsecurity.com/research/whatweb
MASTER_SITES=	http://www.morningstarsecurity.com/downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

# does not work with 1.9 yet
MODRUBY_REV=	1.8

RUN_DEPENDS=	converters/ruby-json,${MODRUBY_FLAVOR} \
		${MODRUBY_ICONV_DEPENDS}

MODRUBY_ADJ_FILES=	whatweb

PKG_ARCH=	*
NO_TEST=	Yes
NO_BUILD=	Yes

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
