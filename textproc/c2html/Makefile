# $OpenBSD: Makefile,v 1.17 2007/09/15 20:59:37 merdely Exp $

COMMENT=		C-language sources to HTML converter

DISTNAME=		c2html-0.9.2
CATEGORIES=		textproc www

# Old versions seem to stay there...
MASTER_SITES=		http://user.cs.tu-berlin.de/%7Eschintke/x2html/ \
			${MASTER_SITE_SUNSITE:=apps/www/converters/}

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/c2html ${PREFIX}/bin
	@ ${INSTALL_MAN} ${WRKSRC}/c2html.1 ${PREFIX}/man/man1
	@ ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/c2html
.for file in COPYING README
	@ ${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/c2html
.endfor

.include <bsd.port.mk>
