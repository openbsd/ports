# $OpenBSD: Makefile,v 1.3 2005/03/11 17:56:50 mbalmer Exp $

COMMENT=	"sendmail milter to scan messages for viruses and spam"

DISTNAME=	smtp-vilter-1.1.8
PKGNAME=	${DISTNAME}p0

CATEGORIES=    	mail

HOMEPAGE=	http://www.etc.msys.ch/software/smtp-vilter/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

SHARED_ONLY=	Yes

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pthread

MASTER_SITES=  	ftp://ftp.etc.msys.ch/pub/sources/smtp-vilter/
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -r ${WRKSRC}/etc/smtp-vilter ${PREFIX}/share/examples/

.include <bsd.port.mk>
