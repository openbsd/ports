# $OpenBSD: Makefile,v 1.2 2007/10/08 08:22:41 steven Exp $

COMMENT=		statistical anti-spam filter

DISTNAME=		spambayes-1.1a4
PKGNAME=		${DISTNAME}p0

CATEGORIES=		mail lang/python

HOMEPAGE=		http://www.spambayes.org/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# PSF
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=spambayes/}

MODULES=		lang/python

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spambayes
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spambayes
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/spambayes/
.for file in muttrc procmailrc spambayes.el
	${INSTALL_DATA} ${WRKSRC}/contrib/${file} ${PREFIX}/share/examples/spambayes/
.endfor

.include <bsd.port.mk>
