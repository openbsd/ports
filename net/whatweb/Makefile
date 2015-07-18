# $OpenBSD: Makefile,v 1.4 2015/07/18 15:46:11 jeremy Exp $

COMMENT=	web scanner

# git clone of b495eda
DISTNAME=	whatweb-0.4.7.1
REVISION=	0

CATEGORIES=	net www

HOMEPAGE=	http://www.morningstarsecurity.com/research/whatweb
MASTER_SITES=	http://distfiles.nl/
#		http://www.morningstarsecurity.com/downloads/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

# WIP support for Ruby 1.9/2.0, but no 2.1 yet.
MODRUBY_REV=	2.0

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
