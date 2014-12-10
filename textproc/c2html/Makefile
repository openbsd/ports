# $OpenBSD: Makefile,v 1.22 2014/12/10 10:49:11 benoit Exp $

COMMENT=		C-language sources to HTML converter

DISTNAME=		c2html-0.9.6
CATEGORIES=		textproc www

# Old versions seem to stay there...
MASTER_SITES=		http://user.cs.tu-berlin.de/%7Eschintke/x2html/ \
			${MASTER_SITE_SUNSITE:=apps/www/converters/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		c

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/c2html ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/c2html.1 ${PREFIX}/man/man1
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c2html
.for file in COPYING README
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/c2html
.endfor

.include <bsd.port.mk>
