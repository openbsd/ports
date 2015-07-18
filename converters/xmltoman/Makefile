# $OpenBSD: Makefile,v 1.8 2015/07/18 20:12:46 jasper Exp $

COMMENT=		xml to manpage converter

DISTNAME=		xmltoman-0.4
CATEGORIES=		converters textproc

HOMEPAGE=		http://sourceforge.net/projects/xmltoman/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xmltoman/}

NO_TEST=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		textproc/p5-XML-Parser

post-extract:
	sed -i 's,/usr/share,${PREFIX}/share,g;s,doc/xmltoman/examples,examples/xmltoman,g' \
		${WRKSRC}/xml/xml*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/{xmltoman,xmlmantohtml} $(PREFIX)/bin
	${INSTALL_DATA_DIR} $(PREFIX)/share/xmltoman
	${INSTALL_DATA} ${WRKSRC}/xmltoman.{css,dtd,xsl} \
		$(PREFIX)/share/xmltoman
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmltoman
	${INSTALL_DATA} ${WRKSRC}/xml/*.xml ${PREFIX}/share/examples/xmltoman


.include <bsd.port.mk>
