# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:38 sthen Exp $

COMMENT=		statistical anti-spam filter

MODPY_EGG_VERSION=	1.1b1
DISTNAME=		spambayes-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		mail

HOMEPAGE=		http://www.spambayes.org/

# PSF
PERMIT_PACKAGE=	Yes

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
