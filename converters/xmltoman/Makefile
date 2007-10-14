# $OpenBSD: Makefile,v 1.1.1.1 2007/10/14 15:37:56 jasper Exp $

COMMENT=		xml to manpage converter

V=			0.3
DISTNAME=		xmltoman_$V.orig
PKGNAME=		xmltoman-$V
CATEGORIES=		converters textproc

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://ftp.debian.org/debian/pool/main/x/xmltoman/

NO_REGRESS=		Yes

WRKDIST= 		${WRKDIR}/xmltoman-$V

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
