# $OpenBSD: Makefile,v 1.8 2013/03/11 11:23:53 espie Exp $

COMMENT=		statistical anti-spam filter

DISTNAME=		spambayes-1.1a4
REVISION =		4

CATEGORIES=		mail

HOMEPAGE=		http://www.spambayes.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# PSF
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=spambayes/}

MODULES=		lang/python

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spambayes
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spambayes
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/spambayes/
.for file in muttrc procmailrc spambayes.el
	${INSTALL_DATA} ${WRKSRC}/contrib/${file} ${PREFIX}/share/examples/spambayes/
.endfor

.include <bsd.port.mk>
