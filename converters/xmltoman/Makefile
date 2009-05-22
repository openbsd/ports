# $OpenBSD: Makefile,v 1.3 2009/05/22 07:28:00 benoit Exp $

COMMENT=		xml to manpage converter

DISTNAME=		xmltoman-0.4
CATEGORIES=		converters textproc

HOMEPAGE=		http://sourceforge.net/projects/xmltoman/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xmltoman/}

NO_REGRESS=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/p5-XML-Parser

post-extract:
	perl -pi -e 's,/usr/share,${PREFIX}/share,g;s,doc/xmltoman/examples,examples/xmltoman,g' \
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
